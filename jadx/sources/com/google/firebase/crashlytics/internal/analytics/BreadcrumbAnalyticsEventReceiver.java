package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BreadcrumbAnalyticsEventReceiver implements AnalyticsEventReceiver, BreadcrumbSource {
    private BreadcrumbHandler breadcrumbHandler;

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver
    public void onEvent(String str, Bundle bundle) {
        BreadcrumbHandler breadcrumbHandler = this.breadcrumbHandler;
        if (breadcrumbHandler != null) {
            try {
                breadcrumbHandler.handleBreadcrumb("$A$:" + serializeEvent(str, bundle));
            } catch (JSONException unused) {
                Logger.getLogger().m509w("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource
    public void registerBreadcrumbHandler(BreadcrumbHandler breadcrumbHandler) {
        this.breadcrumbHandler = breadcrumbHandler;
        Logger.getLogger().m501d("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    private static String serializeEvent(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }
}
