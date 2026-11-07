package com.google.firebase.sessions.settings;

import android.content.Context;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class LocalOverrideSettings_Factory implements Factory<LocalOverrideSettings> {
    private final Provider<Context> appContextProvider;

    private LocalOverrideSettings_Factory(Provider<Context> provider) {
        this.appContextProvider = provider;
    }

    @Override // javax.inject.Provider
    public LocalOverrideSettings get() {
        return newInstance(this.appContextProvider.get());
    }

    public static LocalOverrideSettings_Factory create(Provider<Context> provider) {
        return new LocalOverrideSettings_Factory(provider);
    }

    public static LocalOverrideSettings newInstance(Context context) {
        return new LocalOverrideSettings(context);
    }
}
