package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionsSettings_Factory implements Factory<SessionsSettings> {
    private final Provider<SettingsProvider> localOverrideSettingsProvider;
    private final Provider<SettingsProvider> remoteSettingsProvider;

    private SessionsSettings_Factory(Provider<SettingsProvider> provider, Provider<SettingsProvider> provider2) {
        this.localOverrideSettingsProvider = provider;
        this.remoteSettingsProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SessionsSettings get() {
        return newInstance(this.localOverrideSettingsProvider.get(), this.remoteSettingsProvider.get());
    }

    public static SessionsSettings_Factory create(Provider<SettingsProvider> provider, Provider<SettingsProvider> provider2) {
        return new SessionsSettings_Factory(provider, provider2);
    }

    public static SessionsSettings newInstance(SettingsProvider settingsProvider, SettingsProvider settingsProvider2) {
        return new SessionsSettings(settingsProvider, settingsProvider2);
    }
}
