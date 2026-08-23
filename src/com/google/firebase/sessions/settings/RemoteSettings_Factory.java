package com.google.firebase.sessions.settings;

import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSettings_Factory implements Factory {
    private final Provider appInfoProvider;
    private final Provider configsFetcherProvider;
    private final Provider firebaseInstallationsApiProvider;
    private final Provider settingsCacheProvider;
    private final Provider timeProvider;

    public RemoteSettings_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        this.timeProvider = provider;
        this.firebaseInstallationsApiProvider = provider2;
        this.appInfoProvider = provider3;
        this.configsFetcherProvider = provider4;
        this.settingsCacheProvider = provider5;
    }

    @Override // javax.inject.Provider
    public RemoteSettings get() {
        return newInstance((TimeProvider) this.timeProvider.get(), (FirebaseInstallationsApi) this.firebaseInstallationsApiProvider.get(), (ApplicationInfo) this.appInfoProvider.get(), (CrashlyticsSettingsFetcher) this.configsFetcherProvider.get(), (SettingsCache) this.settingsCacheProvider.get());
    }

    public static RemoteSettings_Factory create(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        return new RemoteSettings_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static RemoteSettings newInstance(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo, CrashlyticsSettingsFetcher crashlyticsSettingsFetcher, SettingsCache settingsCache) {
        return new RemoteSettings(timeProvider, firebaseInstallationsApi, applicationInfo, crashlyticsSettingsFetcher, settingsCache);
    }
}
