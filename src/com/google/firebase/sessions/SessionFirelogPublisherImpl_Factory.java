package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class SessionFirelogPublisherImpl_Factory implements Factory<SessionFirelogPublisherImpl> {
    private final Provider<CoroutineContext> backgroundDispatcherProvider;
    private final Provider<EventGDTLoggerInterface> eventGDTLoggerProvider;
    private final Provider<FirebaseApp> firebaseAppProvider;
    private final Provider<FirebaseInstallationsApi> firebaseInstallationsProvider;
    private final Provider<SessionsSettings> sessionSettingsProvider;

    private SessionFirelogPublisherImpl_Factory(Provider<FirebaseApp> provider, Provider<FirebaseInstallationsApi> provider2, Provider<SessionsSettings> provider3, Provider<EventGDTLoggerInterface> provider4, Provider<CoroutineContext> provider5) {
        this.firebaseAppProvider = provider;
        this.firebaseInstallationsProvider = provider2;
        this.sessionSettingsProvider = provider3;
        this.eventGDTLoggerProvider = provider4;
        this.backgroundDispatcherProvider = provider5;
    }

    @Override // javax.inject.Provider
    public SessionFirelogPublisherImpl get() {
        return newInstance(this.firebaseAppProvider.get(), this.firebaseInstallationsProvider.get(), this.sessionSettingsProvider.get(), this.eventGDTLoggerProvider.get(), this.backgroundDispatcherProvider.get());
    }

    public static SessionFirelogPublisherImpl_Factory create(Provider<FirebaseApp> provider, Provider<FirebaseInstallationsApi> provider2, Provider<SessionsSettings> provider3, Provider<EventGDTLoggerInterface> provider4, Provider<CoroutineContext> provider5) {
        return new SessionFirelogPublisherImpl_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static SessionFirelogPublisherImpl newInstance(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, SessionsSettings sessionsSettings, EventGDTLoggerInterface eventGDTLoggerInterface, CoroutineContext coroutineContext) {
        return new SessionFirelogPublisherImpl(firebaseApp, firebaseInstallationsApi, sessionsSettings, eventGDTLoggerInterface, coroutineContext);
    }
}
