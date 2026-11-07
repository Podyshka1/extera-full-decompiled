package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionDataSerializer_Factory implements Factory<SessionDataSerializer> {
    private final Provider<SessionGenerator> sessionGeneratorProvider;

    private SessionDataSerializer_Factory(Provider<SessionGenerator> provider) {
        this.sessionGeneratorProvider = provider;
    }

    @Override // javax.inject.Provider
    public SessionDataSerializer get() {
        return newInstance(this.sessionGeneratorProvider.get());
    }

    public static SessionDataSerializer_Factory create(Provider<SessionGenerator> provider) {
        return new SessionDataSerializer_Factory(provider);
    }

    public static SessionDataSerializer newInstance(SessionGenerator sessionGenerator) {
        return new SessionDataSerializer(sessionGenerator);
    }
}
