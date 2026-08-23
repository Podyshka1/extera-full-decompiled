package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Personalization {
    private final Provider<AnalyticsConnector> analyticsConnector;
    private final Map<String, String> loggedChoiceIds = Collections.synchronizedMap(new HashMap());

    public Personalization(Provider<AnalyticsConnector> provider) {
        this.analyticsConnector = provider;
    }

    public void logArmActive(String str, ConfigContainer configContainer) {
        JSONObject jSONObjectOptJSONObject;
        AnalyticsConnector analyticsConnector = this.analyticsConnector.get();
        if (analyticsConnector == null) {
            return;
        }
        JSONObject personalizationMetadata = configContainer.getPersonalizationMetadata();
        if (personalizationMetadata.length() < 1) {
            return;
        }
        JSONObject configs = configContainer.getConfigs();
        if (configs.length() >= 1 && (jSONObjectOptJSONObject = personalizationMetadata.optJSONObject(str)) != null) {
            String strOptString = jSONObjectOptJSONObject.optString("choiceId");
            if (strOptString.isEmpty()) {
                return;
            }
            synchronized (this.loggedChoiceIds) {
                try {
                    if (strOptString.equals(this.loggedChoiceIds.get(str))) {
                        return;
                    }
                    this.loggedChoiceIds.put(str, strOptString);
                    Bundle bundle = new Bundle();
                    bundle.putString("arm_key", str);
                    bundle.putString("arm_value", configs.optString(str));
                    bundle.putString("personalization_id", jSONObjectOptJSONObject.optString("personalizationId"));
                    bundle.putInt("arm_index", jSONObjectOptJSONObject.optInt("armIndex", -1));
                    bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                    analyticsConnector.logEvent("fp", "personalization_assignment", bundle);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_fpid", strOptString);
                    analyticsConnector.logEvent("fp", "_fpc", bundle2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
