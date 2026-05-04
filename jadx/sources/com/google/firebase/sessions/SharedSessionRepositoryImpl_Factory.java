package com.google.firebase.sessions;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.settings.SessionsSettings;
import javax.inject.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class SharedSessionRepositoryImpl_Factory implements Factory {
    private final Provider backgroundDispatcherProvider;
    private final Provider processDataManagerProvider;
    private final Provider sessionDataStoreProvider;
    private final Provider sessionFirelogPublisherProvider;
    private final Provider sessionGeneratorProvider;
    private final Provider sessionsSettingsProvider;
    private final Provider timeProvider;

    public SharedSessionRepositoryImpl_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7) {
        this.sessionsSettingsProvider = provider;
        this.sessionGeneratorProvider = provider2;
        this.sessionFirelogPublisherProvider = provider3;
        this.timeProvider = provider4;
        this.sessionDataStoreProvider = provider5;
        this.processDataManagerProvider = provider6;
        this.backgroundDispatcherProvider = provider7;
    }

    @Override // javax.inject.Provider
    public SharedSessionRepositoryImpl get() {
        return newInstance((SessionsSettings) this.sessionsSettingsProvider.get(), (SessionGenerator) this.sessionGeneratorProvider.get(), (SessionFirelogPublisher) this.sessionFirelogPublisherProvider.get(), (TimeProvider) this.timeProvider.get(), (DataStore) this.sessionDataStoreProvider.get(), (ProcessDataManager) this.processDataManagerProvider.get(), (CoroutineContext) this.backgroundDispatcherProvider.get());
    }

    public static SharedSessionRepositoryImpl_Factory create(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7) {
        return new SharedSessionRepositoryImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static SharedSessionRepositoryImpl newInstance(SessionsSettings sessionsSettings, SessionGenerator sessionGenerator, SessionFirelogPublisher sessionFirelogPublisher, TimeProvider timeProvider, DataStore dataStore, ProcessDataManager processDataManager, CoroutineContext coroutineContext) {
        return new SharedSessionRepositoryImpl(sessionsSettings, sessionGenerator, sessionFirelogPublisher, timeProvider, dataStore, processDataManager, coroutineContext);
    }
}
