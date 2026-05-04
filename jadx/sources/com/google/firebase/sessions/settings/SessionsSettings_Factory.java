package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionsSettings_Factory implements Factory {
    private final Provider localOverrideSettingsProvider;
    private final Provider remoteSettingsProvider;

    public SessionsSettings_Factory(Provider provider, Provider provider2) {
        this.localOverrideSettingsProvider = provider;
        this.remoteSettingsProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SessionsSettings get() {
        return newInstance((SettingsProvider) this.localOverrideSettingsProvider.get(), (SettingsProvider) this.remoteSettingsProvider.get());
    }

    public static SessionsSettings_Factory create(Provider provider, Provider provider2) {
        return new SessionsSettings_Factory(provider, provider2);
    }

    public static SessionsSettings newInstance(SettingsProvider settingsProvider, SettingsProvider settingsProvider2) {
        return new SessionsSettings(settingsProvider, settingsProvider2);
    }
}
