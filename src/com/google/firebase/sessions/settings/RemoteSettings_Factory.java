package com.google.firebase.sessions.settings;

import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSettings_Factory implements Factory<RemoteSettings> {
    private final Provider<ApplicationInfo> appInfoProvider;
    private final Provider<CrashlyticsSettingsFetcher> configsFetcherProvider;
    private final Provider<FirebaseInstallationsApi> firebaseInstallationsApiProvider;
    private final Provider<SettingsCache> settingsCacheProvider;
    private final Provider<TimeProvider> timeProvider;

    private RemoteSettings_Factory(Provider<TimeProvider> provider, Provider<FirebaseInstallationsApi> provider2, Provider<ApplicationInfo> provider3, Provider<CrashlyticsSettingsFetcher> provider4, Provider<SettingsCache> provider5) {
        this.timeProvider = provider;
        this.firebaseInstallationsApiProvider = provider2;
        this.appInfoProvider = provider3;
        this.configsFetcherProvider = provider4;
        this.settingsCacheProvider = provider5;
    }

    @Override // javax.inject.Provider
    public RemoteSettings get() {
        return newInstance(this.timeProvider.get(), this.firebaseInstallationsApiProvider.get(), this.appInfoProvider.get(), this.configsFetcherProvider.get(), this.settingsCacheProvider.get());
    }

    public static RemoteSettings_Factory create(Provider<TimeProvider> provider, Provider<FirebaseInstallationsApi> provider2, Provider<ApplicationInfo> provider3, Provider<CrashlyticsSettingsFetcher> provider4, Provider<SettingsCache> provider5) {
        return new RemoteSettings_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static RemoteSettings newInstance(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo, CrashlyticsSettingsFetcher crashlyticsSettingsFetcher, SettingsCache settingsCache) {
        return new RemoteSettings(timeProvider, firebaseInstallationsApi, applicationInfo, crashlyticsSettingsFetcher, settingsCache);
    }
}
