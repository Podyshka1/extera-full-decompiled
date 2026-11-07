package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsCacheImpl_Factory implements Factory<SettingsCacheImpl> {
    private final Provider<CoroutineContext> backgroundDispatcherProvider;
    private final Provider<DataStore<SessionConfigs>> sessionConfigsDataStoreProvider;
    private final Provider<TimeProvider> timeProvider;

    private SettingsCacheImpl_Factory(Provider<CoroutineContext> provider, Provider<TimeProvider> provider2, Provider<DataStore<SessionConfigs>> provider3) {
        this.backgroundDispatcherProvider = provider;
        this.timeProvider = provider2;
        this.sessionConfigsDataStoreProvider = provider3;
    }

    @Override // javax.inject.Provider
    public SettingsCacheImpl get() {
        return newInstance(this.backgroundDispatcherProvider.get(), this.timeProvider.get(), this.sessionConfigsDataStoreProvider.get());
    }

    public static SettingsCacheImpl_Factory create(Provider<CoroutineContext> provider, Provider<TimeProvider> provider2, Provider<DataStore<SessionConfigs>> provider3) {
        return new SettingsCacheImpl_Factory(provider, provider2, provider3);
    }

    public static SettingsCacheImpl newInstance(CoroutineContext coroutineContext, TimeProvider timeProvider, DataStore<SessionConfigs> dataStore) {
        return new SettingsCacheImpl(coroutineContext, timeProvider, dataStore);
    }
}
