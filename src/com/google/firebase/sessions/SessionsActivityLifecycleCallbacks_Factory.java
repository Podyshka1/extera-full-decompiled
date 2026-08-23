package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionsActivityLifecycleCallbacks_Factory implements Factory {
    private final Provider sharedSessionRepositoryProvider;

    public SessionsActivityLifecycleCallbacks_Factory(Provider provider) {
        this.sharedSessionRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public SessionsActivityLifecycleCallbacks get() {
        return newInstance((SharedSessionRepository) this.sharedSessionRepositoryProvider.get());
    }

    public static SessionsActivityLifecycleCallbacks_Factory create(Provider provider) {
        return new SessionsActivityLifecycleCallbacks_Factory(provider);
    }

    public static SessionsActivityLifecycleCallbacks newInstance(SharedSessionRepository sharedSessionRepository) {
        return new SessionsActivityLifecycleCallbacks(sharedSessionRepository);
    }
}
