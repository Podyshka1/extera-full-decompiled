package com.google.firebase.sessions;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class SharedSessionRepositoryImpl_Factory implements Factory<SharedSessionRepositoryImpl> {
    private final Provider<CoroutineContext> backgroundDispatcherProvider;
    private final Provider<ProcessDataManager> processDataManagerProvider;
    private final Provider<DataStore<SessionData>> sessionDataStoreProvider;
    private final Provider<SessionFirelogPublisher> sessionFirelogPublisherProvider;
    private final Provider<SessionGenerator> sessionGeneratorProvider;
    private final Provider<SessionsSettings> sessionsSettingsProvider;
    private final Provider<TimeProvider> timeProvider;

    private SharedSessionRepositoryImpl_Factory(Provider<SessionsSettings> provider, Provider<SessionGenerator> provider2, Provider<SessionFirelogPublisher> provider3, Provider<TimeProvider> provider4, Provider<DataStore<SessionData>> provider5, Provider<ProcessDataManager> provider6, Provider<CoroutineContext> provider7) {
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
        return newInstance(this.sessionsSettingsProvider.get(), this.sessionGeneratorProvider.get(), this.sessionFirelogPublisherProvider.get(), this.timeProvider.get(), this.sessionDataStoreProvider.get(), this.processDataManagerProvider.get(), this.backgroundDispatcherProvider.get());
    }

    public static SharedSessionRepositoryImpl_Factory create(Provider<SessionsSettings> provider, Provider<SessionGenerator> provider2, Provider<SessionFirelogPublisher> provider3, Provider<TimeProvider> provider4, Provider<DataStore<SessionData>> provider5, Provider<ProcessDataManager> provider6, Provider<CoroutineContext> provider7) {
        return new SharedSessionRepositoryImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static SharedSessionRepositoryImpl newInstance(SessionsSettings sessionsSettings, SessionGenerator sessionGenerator, SessionFirelogPublisher sessionFirelogPublisher, TimeProvider timeProvider, DataStore<SessionData> dataStore, ProcessDataManager processDataManager, CoroutineContext coroutineContext) {
        return new SharedSessionRepositoryImpl(sessionsSettings, sessionGenerator, sessionFirelogPublisher, timeProvider, dataStore, processDataManager, coroutineContext);
    }
}
