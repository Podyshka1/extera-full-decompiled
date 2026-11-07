package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AbtComponent {
    private final Map<String, FirebaseABTesting> abtOriginInstances = new HashMap();
    private final Provider<AnalyticsConnector> analyticsConnector;
    private final Context appContext;

    public AbtComponent(Context context, Provider<AnalyticsConnector> provider) {
        this.appContext = context;
        this.analyticsConnector = provider;
    }

    public synchronized FirebaseABTesting get(String str) {
        try {
            if (!this.abtOriginInstances.containsKey(str)) {
                this.abtOriginInstances.put(str, createAbtInstance(str));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.abtOriginInstances.get(str);
    }

    public FirebaseABTesting createAbtInstance(String str) {
        return new FirebaseABTesting(this.appContext, this.analyticsConnector, str);
    }
}
