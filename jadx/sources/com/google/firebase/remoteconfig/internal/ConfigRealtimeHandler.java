package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class ConfigRealtimeHandler {
    private final ConfigCacheClient activatedCacheClient;
    private final ConfigFetchHandler configFetchHandler;
    private final ConfigRealtimeHttpClient configRealtimeHttpClient;
    private final Context context;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final Set listeners;
    private final String namespace;
    private final ScheduledExecutorService scheduledExecutorService;
    private final ConfigSharedPrefsClient sharedPrefsClient;

    public ConfigRealtimeHandler(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, ConfigFetchHandler configFetchHandler, ConfigCacheClient configCacheClient, Context context, String str, ConfigSharedPrefsClient configSharedPrefsClient, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.listeners = linkedHashSet;
        this.configRealtimeHttpClient = new ConfigRealtimeHttpClient(firebaseApp, firebaseInstallationsApi, configFetchHandler, configCacheClient, context, str, linkedHashSet, configSharedPrefsClient, scheduledExecutorService);
        this.firebaseApp = firebaseApp;
        this.configFetchHandler = configFetchHandler;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.activatedCacheClient = configCacheClient;
        this.context = context;
        this.namespace = str;
        this.sharedPrefsClient = configSharedPrefsClient;
        this.scheduledExecutorService = scheduledExecutorService;
    }

    private synchronized void beginRealtime() {
        if (!this.listeners.isEmpty()) {
            this.configRealtimeHttpClient.startHttpConnection();
        }
    }

    public synchronized void setBackgroundState(boolean z) {
        this.configRealtimeHttpClient.setIsInBackground(z);
        if (!z) {
            beginRealtime();
        }
    }
}
