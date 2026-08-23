package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseSessions_Factory implements Factory<FirebaseSessions> {
    private final Provider<CoroutineContext> backgroundDispatcherProvider;
    private final Provider<FirebaseApp> firebaseAppProvider;
    private final Provider<SessionsActivityLifecycleCallbacks> sessionsActivityLifecycleCallbacksProvider;
    private final Provider<SessionsSettings> settingsProvider;

    private FirebaseSessions_Factory(Provider<FirebaseApp> provider, Provider<SessionsSettings> provider2, Provider<CoroutineContext> provider3, Provider<SessionsActivityLifecycleCallbacks> provider4) {
        this.firebaseAppProvider = provider;
        this.settingsProvider = provider2;
        this.backgroundDispatcherProvider = provider3;
        this.sessionsActivityLifecycleCallbacksProvider = provider4;
    }

    @Override // javax.inject.Provider
    public FirebaseSessions get() {
        return newInstance(this.firebaseAppProvider.get(), this.settingsProvider.get(), this.backgroundDispatcherProvider.get(), this.sessionsActivityLifecycleCallbacksProvider.get());
    }

    public static FirebaseSessions_Factory create(Provider<FirebaseApp> provider, Provider<SessionsSettings> provider2, Provider<CoroutineContext> provider3, Provider<SessionsActivityLifecycleCallbacks> provider4) {
        return new FirebaseSessions_Factory(provider, provider2, provider3, provider4);
    }

    public static FirebaseSessions newInstance(FirebaseApp firebaseApp, SessionsSettings sessionsSettings, CoroutineContext coroutineContext, SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks) {
        return new FirebaseSessions(firebaseApp, sessionsSettings, coroutineContext, sessionsActivityLifecycleCallbacks);
    }
}
