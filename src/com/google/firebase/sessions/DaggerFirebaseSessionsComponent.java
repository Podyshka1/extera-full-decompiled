package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.DoubleCheck;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.settings.LocalOverrideSettings_Factory;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher_Factory;
import com.google.firebase.sessions.settings.RemoteSettings_Factory;
import com.google.firebase.sessions.settings.SessionsSettings_Factory;
import com.google.firebase.sessions.settings.SettingsCacheImpl_Factory;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public abstract class DaggerFirebaseSessionsComponent {
    public static FirebaseSessionsComponent.Builder builder() {
        return new Builder();
    }

    private static final class Builder implements FirebaseSessionsComponent.Builder {
        private Context appContext;
        private CoroutineContext backgroundDispatcher;
        private CoroutineContext blockingDispatcher;
        private FirebaseApp firebaseApp;
        private FirebaseInstallationsApi firebaseInstallationsApi;
        private Provider transportFactoryProvider;

        private Builder() {
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
        public Builder transportFactoryProvider(Provider provider) {
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

    private static final class FirebaseSessionsComponentImpl implements FirebaseSessionsComponent {
        private com.google.firebase.sessions.dagger.internal.Provider appContextProvider;
        private com.google.firebase.sessions.dagger.internal.Provider applicationInfoProvider;
        private com.google.firebase.sessions.dagger.internal.Provider backgroundDispatcherProvider;
        private com.google.firebase.sessions.dagger.internal.Provider blockingDispatcherProvider;
        private com.google.firebase.sessions.dagger.internal.Provider eventGDTLoggerProvider;
        private com.google.firebase.sessions.dagger.internal.Provider firebaseAppProvider;
        private com.google.firebase.sessions.dagger.internal.Provider firebaseInstallationsApiProvider;
        private final FirebaseSessionsComponentImpl firebaseSessionsComponentImpl;
        private com.google.firebase.sessions.dagger.internal.Provider firebaseSessionsProvider;
        private com.google.firebase.sessions.dagger.internal.Provider localOverrideSettingsProvider;
        private com.google.firebase.sessions.dagger.internal.Provider processDataManagerImplProvider;
        private com.google.firebase.sessions.dagger.internal.Provider remoteSettingsFetcherProvider;
        private com.google.firebase.sessions.dagger.internal.Provider remoteSettingsProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionConfigsDataStoreProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionDataSerializerProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionDataStoreProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionFirelogPublisherImplProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionGeneratorProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionsActivityLifecycleCallbacksProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sessionsSettingsProvider;
        private com.google.firebase.sessions.dagger.internal.Provider settingsCacheImplProvider;
        private com.google.firebase.sessions.dagger.internal.Provider sharedSessionRepositoryImplProvider;
        private com.google.firebase.sessions.dagger.internal.Provider timeProvider;
        private com.google.firebase.sessions.dagger.internal.Provider transportFactoryProvider;
        private com.google.firebase.sessions.dagger.internal.Provider uuidGeneratorProvider;

        private FirebaseSessionsComponentImpl(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, Provider provider) {
            this.firebaseSessionsComponentImpl = this;
            initialize(context, coroutineContext, coroutineContext2, firebaseApp, firebaseInstallationsApi, provider);
        }

        private void initialize(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, Provider provider) {
            this.firebaseAppProvider = InstanceFactory.create(firebaseApp);
            Factory factoryCreate = InstanceFactory.create(context);
            this.appContextProvider = factoryCreate;
            this.localOverrideSettingsProvider = DoubleCheck.provider(LocalOverrideSettings_Factory.create(factoryCreate));
            this.timeProvider = DoubleCheck.provider(C1904x7ce4ac45.create());
            this.firebaseInstallationsApiProvider = InstanceFactory.create(firebaseInstallationsApi);
            this.applicationInfoProvider = DoubleCheck.provider(C1901x19dc4d73.create(this.firebaseAppProvider));
            Factory factoryCreate2 = InstanceFactory.create(coroutineContext2);
            this.blockingDispatcherProvider = factoryCreate2;
            this.remoteSettingsFetcherProvider = DoubleCheck.provider(RemoteSettingsFetcher_Factory.create(this.applicationInfoProvider, factoryCreate2));
            this.backgroundDispatcherProvider = InstanceFactory.create(coroutineContext);
            com.google.firebase.sessions.dagger.internal.Provider provider2 = DoubleCheck.provider(C1902x884ab35.create(this.appContextProvider, this.blockingDispatcherProvider));
            this.sessionConfigsDataStoreProvider = provider2;
            com.google.firebase.sessions.dagger.internal.Provider provider3 = DoubleCheck.provider(SettingsCacheImpl_Factory.create(this.backgroundDispatcherProvider, this.timeProvider, provider2));
            this.settingsCacheImplProvider = provider3;
            com.google.firebase.sessions.dagger.internal.Provider provider4 = DoubleCheck.provider(RemoteSettings_Factory.create(this.timeProvider, this.firebaseInstallationsApiProvider, this.applicationInfoProvider, this.remoteSettingsFetcherProvider, provider3));
            this.remoteSettingsProvider = provider4;
            this.sessionsSettingsProvider = DoubleCheck.provider(SessionsSettings_Factory.create(this.localOverrideSettingsProvider, provider4));
            com.google.firebase.sessions.dagger.internal.Provider provider5 = DoubleCheck.provider(C1905x6dacf2b9.create());
            this.uuidGeneratorProvider = provider5;
            this.sessionGeneratorProvider = DoubleCheck.provider(SessionGenerator_Factory.create(this.timeProvider, provider5));
            Factory factoryCreate3 = InstanceFactory.create(provider);
            this.transportFactoryProvider = factoryCreate3;
            com.google.firebase.sessions.dagger.internal.Provider provider6 = DoubleCheck.provider(EventGDTLogger_Factory.create(factoryCreate3));
            this.eventGDTLoggerProvider = provider6;
            this.sessionFirelogPublisherImplProvider = DoubleCheck.provider(SessionFirelogPublisherImpl_Factory.create(this.firebaseAppProvider, this.firebaseInstallationsApiProvider, this.sessionsSettingsProvider, provider6, this.backgroundDispatcherProvider));
            com.google.firebase.sessions.dagger.internal.Provider provider7 = DoubleCheck.provider(SessionDataSerializer_Factory.create(this.sessionGeneratorProvider));
            this.sessionDataSerializerProvider = provider7;
            this.sessionDataStoreProvider = DoubleCheck.provider(C1903xa7e684e2.create(this.appContextProvider, this.blockingDispatcherProvider, provider7));
            com.google.firebase.sessions.dagger.internal.Provider provider8 = DoubleCheck.provider(ProcessDataManagerImpl_Factory.create(this.appContextProvider, this.uuidGeneratorProvider));
            this.processDataManagerImplProvider = provider8;
            com.google.firebase.sessions.dagger.internal.Provider provider9 = DoubleCheck.provider(SharedSessionRepositoryImpl_Factory.create(this.sessionsSettingsProvider, this.sessionGeneratorProvider, this.sessionFirelogPublisherImplProvider, this.timeProvider, this.sessionDataStoreProvider, provider8, this.backgroundDispatcherProvider));
            this.sharedSessionRepositoryImplProvider = provider9;
            com.google.firebase.sessions.dagger.internal.Provider provider10 = DoubleCheck.provider(SessionsActivityLifecycleCallbacks_Factory.create(provider9));
            this.sessionsActivityLifecycleCallbacksProvider = provider10;
            this.firebaseSessionsProvider = DoubleCheck.provider(FirebaseSessions_Factory.create(this.firebaseAppProvider, this.sessionsSettingsProvider, this.backgroundDispatcherProvider, provider10));
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent
        public FirebaseSessions getFirebaseSessions() {
            return (FirebaseSessions) this.firebaseSessionsProvider.get();
        }

        @Override // com.google.firebase.sessions.FirebaseSessionsComponent
        public SharedSessionRepository getSharedSessionRepository() {
            return (SharedSessionRepository) this.sharedSessionRepositoryImplProvider.get();
        }
    }
}
