package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class EventGDTLogger_Factory implements Factory {
    private final Provider transportFactoryProvider;

    public EventGDTLogger_Factory(Provider provider) {
        this.transportFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public EventGDTLogger get() {
        return newInstance((com.google.firebase.inject.Provider) this.transportFactoryProvider.get());
    }

    public static EventGDTLogger_Factory create(Provider provider) {
        return new EventGDTLogger_Factory(provider);
    }

    public static EventGDTLogger newInstance(com.google.firebase.inject.Provider provider) {
        return new EventGDTLogger(provider);
    }
}
