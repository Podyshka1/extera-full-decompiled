package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.DoubleCheck;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.settings.LocalOverrideSettings;
import com.google.firebase.sessions.settings.LocalOverrideSettings_Factory;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher_Factory;
import com.google.firebase.sessions.settings.RemoteSettings_Factory;
import com.google.firebase.sessions.settings.SessionConfigs;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.google.firebase.sessions.settings.SessionsSettings_Factory;
import com.google.firebase.sessions.settings.SettingsCacheImpl;
import com.google.firebase.sessions.settings.SettingsCacheImpl_Factory;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public abstract class DaggerFirebaseSessionsComponent {
    public static FirebaseSessionsComponent.Builder builder() {
        return new Builder();
    }

    public static final class Builder implements FirebaseSessionsComponent.Builder {
        private Context appContext;
        private CoroutineContext backgroundDispatcher;
        private CoroutineContext blockingDispatcher;
        private FirebaseApp firebaseApp;
        private FirebaseInstallationsApi firebaseInstallationsApi;
        private Provider<TransportFactory> transportFactoryProvider;

        private Builder() {
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public /* bridge */ /* synthetic */ FirebaseSessionsComponent.Builder transportFactoryProvider(Provider provider) {
            return transportFactoryProvider((Provider<TransportFactory>) provider);
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder appContext(Context context) {
            this.appContext = (Context) Preconditions.checkNotNull(context);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder backgroundDispatcher(CoroutineContext coroutineContext) {
            this.backgroundDispatcher = (CoroutineContext) Preconditions.checkNotNull(coroutineContext);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder blockingDispatcher(CoroutineContext coroutineContext) {
            this.blockingDispatcher = (CoroutineContext) Preconditions.checkNotNull(coroutineContext);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder firebaseApp(FirebaseApp firebaseApp) {
            this.firebaseApp = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder firebaseInstallationsApi(FirebaseInstallationsApi firebaseInstallationsApi) {
            this.firebaseInstallationsApi = (FirebaseInstallationsApi) Preconditions.checkNotNull(firebaseInstallationsApi);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public Builder transportFactoryProvider(Provider<TransportFactory> provider) {
            this.transportFactoryProvider = (Provider) Preconditions.checkNotNull(provider);
            return this;
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent.Builder
        public FirebaseSessionsComponent build() {
            Preconditions.checkBuilderRequirement(this.appContext, Context.class);
            Preconditions.checkBuilderRequirement(this.backgroundDispatcher, CoroutineContext.class);
            Preconditions.checkBuilderRequirement(this.blockingDispatcher, CoroutineContext.class);
            Preconditions.checkBuilderRequirement(this.firebaseApp, FirebaseApp.class);
            Preconditions.checkBuilderRequirement(this.firebaseInstallationsApi, FirebaseInstallationsApi.class);
            Preconditions.checkBuilderRequirement(this.transportFactoryProvider, Provider.class);
            return new FirebaseSessionsComponentImpl(this.appContext, this.backgroundDispatcher, this.blockingDispatcher, this.firebaseApp, this.firebaseInstallationsApi, this.transportFactoryProvider);
        }
    }

    public static final class FirebaseSessionsComponentImpl implements FirebaseSessionsComponent {
        com.google.firebase.sessions.dagger.internal.Provider<Context> appContextProvider;
        com.google.firebase.sessions.dagger.internal.Provider<ApplicationInfo> applicationInfoProvider;
        com.google.firebase.sessions.dagger.internal.Provider<CoroutineContext> backgroundDispatcherProvider;
        com.google.firebase.sessions.dagger.internal.Provider<CoroutineContext> blockingDispatcherProvider;
        com.google.firebase.sessions.dagger.internal.Provider<EventGDTLogger> eventGDTLoggerProvider;
        com.google.firebase.sessions.dagger.internal.Provider<FirebaseApp> firebaseAppProvider;
        com.google.firebase.sessions.dagger.internal.Provider<FirebaseInstallationsApi> firebaseInstallationsApiProvider;
        private final FirebaseSessionsComponentImpl firebaseSessionsComponentImpl = this;
        com.google.firebase.sessions.dagger.internal.Provider<FirebaseSessions> firebaseSessionsProvider;
        com.google.firebase.sessions.dagger.internal.Provider<LocalOverrideSettings> localOverrideSettingsProvider;
        com.google.firebase.sessions.dagger.internal.Provider<ProcessDataManagerImpl> processDataManagerImplProvider;
        com.google.firebase.sessions.dagger.internal.Provider<RemoteSettingsFetcher> remoteSettingsFetcherProvider;
        com.google.firebase.sessions.dagger.internal.Provider<RemoteSettings> remoteSettingsProvider;
        com.google.firebase.sessions.dagger.internal.Provider<DataStore<SessionConfigs>> sessionConfigsDataStoreProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SessionDataSerializer> sessionDataSerializerProvider;
        com.google.firebase.sessions.dagger.internal.Provider<DataStore<SessionData>> sessionDataStoreProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SessionFirelogPublisherImpl> sessionFirelogPublisherImplProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SessionGenerator> sessionGeneratorProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SessionsActivityLifecycleCallbacks> sessionsActivityLifecycleCallbacksProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SessionsSettings> sessionsSettingsProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SettingsCacheImpl> settingsCacheImplProvider;
        com.google.firebase.sessions.dagger.internal.Provider<SharedSessionRepositoryImpl> sharedSessionRepositoryImplProvider;
        com.google.firebase.sessions.dagger.internal.Provider<TimeProvider> timeProvider;
        com.google.firebase.sessions.dagger.internal.Provider<Provider<TransportFactory>> transportFactoryProvider;
        com.google.firebase.sessions.dagger.internal.Provider<UuidGenerator> uuidGeneratorProvider;

        public FirebaseSessionsComponentImpl(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider) {
            initialize(context, coroutineContext, coroutineContext2, firebaseApp, firebaseInstallationsApi, provider);
        }

        private void initialize(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider) {
            this.firebaseAppProvider = InstanceFactory.create(firebaseApp);
            Factory factoryCreate = InstanceFactory.create(context);
            this.appContextProvider = factoryCreate;
            this.localOverrideSettingsProvider = DoubleCheck.provider(LocalOverrideSettings_Factory.create(factoryCreate));
            this.timeProvider = DoubleCheck.provider(C2082x7ce4ac45.create());
            this.firebaseInstallationsApiProvider = InstanceFactory.create(firebaseInstallationsApi);
            this.applicationInfoProvider = DoubleCheck.provider(C2079x19dc4d73.create(this.firebaseAppProvider));
            Factory factoryCreate2 = InstanceFactory.create(coroutineContext2);
            this.blockingDispatcherProvider = factoryCreate2;
            this.remoteSettingsFetcherProvider = DoubleCheck.provider(RemoteSettingsFetcher_Factory.create(this.applicationInfoProvider, factoryCreate2));
            this.backgroundDispatcherProvider = InstanceFactory.create(coroutineContext);
            com.google.firebase.sessions.dagger.internal.Provider<DataStore<SessionConfigs>> provider2 = DoubleCheck.provider(C2080x884ab35.create(this.appContextProvider, this.blockingDispatcherProvider));
            this.sessionConfigsDataStoreProvider = provider2;
            com.google.firebase.sessions.dagger.internal.Provider<SettingsCacheImpl> provider3 = DoubleCheck.provider(SettingsCacheImpl_Factory.create(this.backgroundDispatcherProvider, this.timeProvider, provider2));
            this.settingsCacheImplProvider = provider3;
            com.google.firebase.sessions.dagger.internal.Provider<RemoteSettings> provider4 = DoubleCheck.provider(RemoteSettings_Factory.create(this.timeProvider, this.firebaseInstallationsApiProvider, this.applicationInfoProvider, this.remoteSettingsFetcherProvider, provider3));
            this.remoteSettingsProvider = provider4;
            this.sessionsSettingsProvider = DoubleCheck.provider(SessionsSettings_Factory.create(this.localOverrideSettingsProvider, provider4));
            com.google.firebase.sessions.dagger.internal.Provider<UuidGenerator> provider5 = DoubleCheck.provider(C2083x6dacf2b9.create());
            this.uuidGeneratorProvider = provider5;
            this.sessionGeneratorProvider = DoubleCheck.provider(SessionGenerator_Factory.create(this.timeProvider, provider5));
            Factory factoryCreate3 = InstanceFactory.create(provider);
            this.transportFactoryProvider = factoryCreate3;
            com.google.firebase.sessions.dagger.internal.Provider<EventGDTLogger> provider6 = DoubleCheck.provider(EventGDTLogger_Factory.create(factoryCreate3));
            this.eventGDTLoggerProvider = provider6;
            this.sessionFirelogPublisherImplProvider = DoubleCheck.provider(SessionFirelogPublisherImpl_Factory.create(this.firebaseAppProvider, this.firebaseInstallationsApiProvider, this.sessionsSettingsProvider, provider6, this.backgroundDispatcherProvider));
            com.google.firebase.sessions.dagger.internal.Provider<SessionDataSerializer> provider7 = DoubleCheck.provider(SessionDataSerializer_Factory.create(this.sessionGeneratorProvider));
            this.sessionDataSerializerProvider = provider7;
            this.sessionDataStoreProvider = DoubleCheck.provider(C2081xa7e684e2.create(this.appContextProvider, this.blockingDispatcherProvider, provider7));
            com.google.firebase.sessions.dagger.internal.Provider<ProcessDataManagerImpl> provider8 = DoubleCheck.provider(ProcessDataManagerImpl_Factory.create(this.appContextProvider, this.uuidGeneratorProvider));
            this.processDataManagerImplProvider = provider8;
            com.google.firebase.sessions.dagger.internal.Provider<SharedSessionRepositoryImpl> provider9 = DoubleCheck.provider(SharedSessionRepositoryImpl_Factory.create(this.sessionsSettingsProvider, this.sessionGeneratorProvider, this.sessionFirelogPublisherImplProvider, this.timeProvider, this.sessionDataStoreProvider, provider8, this.backgroundDispatcherProvider));
            this.sharedSessionRepositoryImplProvider = provider9;
            com.google.firebase.sessions.dagger.internal.Provider<SessionsActivityLifecycleCallbacks> provider10 = DoubleCheck.provider(SessionsActivityLifecycleCallbacks_Factory.create(provider9));
            this.sessionsActivityLifecycleCallbacksProvider = provider10;
            this.firebaseSessionsProvider = DoubleCheck.provider(FirebaseSessions_Factory.create(this.firebaseAppProvider, this.sessionsSettingsProvider, this.backgroundDispatcherProvider, provider10));
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent
        public FirebaseSessions getFirebaseSessions() {
            return this.firebaseSessionsProvider.get();
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent
        public SharedSessionRepository getSharedSessionRepository() {
            return this.sharedSessionRepositoryImplProvider.get();
        }
    }
}
