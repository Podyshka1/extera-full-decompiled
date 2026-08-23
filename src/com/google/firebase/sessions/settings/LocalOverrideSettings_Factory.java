package com.google.firebase.sessions.settings;

import android.content.Context;
import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class LocalOverrideSettings_Factory implements Factory {
    private final Provider appContextProvider;

    public LocalOverrideSettings_Factory(Provider provider) {
        this.appContextProvider = provider;
    }

    @Override // javax.inject.Provider
    public LocalOverrideSettings get() {
        return newInstance((Context) this.appContextProvider.get());
    }

    public static LocalOverrideSettings_Factory create(Provider provider) {
        return new LocalOverrideSettings_Factory(provider);
    }

    public static LocalOverrideSettings newInstance(Context context) {
        return new LocalOverrideSettings(context);
    }
}
