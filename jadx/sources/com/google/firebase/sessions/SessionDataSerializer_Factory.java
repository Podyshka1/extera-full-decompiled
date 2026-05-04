package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SessionDataSerializer_Factory implements Factory {
    private final Provider sessionGeneratorProvider;

    public SessionDataSerializer_Factory(Provider provider) {
        this.sessionGeneratorProvider = provider;
    }

    @Override // javax.inject.Provider
    public SessionDataSerializer get() {
        return newInstance((SessionGenerator) this.sessionGeneratorProvider.get());
    }

    public static SessionDataSerializer_Factory create(Provider provider) {
        return new SessionDataSerializer_Factory(provider);
    }

    public static SessionDataSerializer newInstance(SessionGenerator sessionGenerator) {
        return new SessionDataSerializer(sessionGenerator);
    }
}
