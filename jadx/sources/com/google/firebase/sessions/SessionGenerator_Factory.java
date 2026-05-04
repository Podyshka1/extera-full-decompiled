package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionGenerator_Factory implements Factory {
    private final Provider timeProvider;
    private final Provider uuidGeneratorProvider;

    public SessionGenerator_Factory(Provider provider, Provider provider2) {
        this.timeProvider = provider;
        this.uuidGeneratorProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SessionGenerator get() {
        return newInstance((TimeProvider) this.timeProvider.get(), (UuidGenerator) this.uuidGeneratorProvider.get());
    }

    public static SessionGenerator_Factory create(Provider provider, Provider provider2) {
        return new SessionGenerator_Factory(provider, provider2);
    }

    public static SessionGenerator newInstance(TimeProvider timeProvider, UuidGenerator uuidGenerator) {
        return new SessionGenerator(timeProvider, uuidGenerator);
    }
}
