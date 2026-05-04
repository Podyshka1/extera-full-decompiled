package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsCacheImpl_Factory implements Factory {
    private final Provider backgroundDispatcherProvider;
    private final Provider sessionConfigsDataStoreProvider;
    private final Provider timeProvider;

    public SettingsCacheImpl_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.backgroundDispatcherProvider = provider;
        this.timeProvider = provider2;
        this.sessionConfigsDataStoreProvider = provider3;
    }

    @Override // javax.inject.Provider
    public SettingsCacheImpl get() {
        return newInstance((CoroutineContext) this.backgroundDispatcherProvider.get(), (TimeProvider) this.timeProvider.get(), (DataStore) this.sessionConfigsDataStoreProvider.get());
    }

    public static SettingsCacheImpl_Factory create(Provider provider, Provider provider2, Provider provider3) {
        return new SettingsCacheImpl_Factory(provider, provider2, provider3);
    }

    public static SettingsCacheImpl newInstance(CoroutineContext coroutineContext, TimeProvider timeProvider, DataStore dataStore) {
        return new SettingsCacheImpl(coroutineContext, timeProvider, dataStore);
    }
}
