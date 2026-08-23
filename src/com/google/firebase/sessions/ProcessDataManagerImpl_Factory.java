package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDataManagerImpl_Factory implements Factory<ProcessDataManagerImpl> {
    private final Provider<Context> appContextProvider;
    private final Provider<UuidGenerator> uuidGeneratorProvider;

    private ProcessDataManagerImpl_Factory(Provider<Context> provider, Provider<UuidGenerator> provider2) {
        this.appContextProvider = provider;
        this.uuidGeneratorProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ProcessDataManagerImpl get() {
        return newInstance(this.appContextProvider.get(), this.uuidGeneratorProvider.get());
    }

    public static ProcessDataManagerImpl_Factory create(Provider<Context> provider, Provider<UuidGenerator> provider2) {
        return new ProcessDataManagerImpl_Factory(provider, provider2);
    }

    public static ProcessDataManagerImpl newInstance(Context context, UuidGenerator uuidGenerator) {
        return new ProcessDataManagerImpl(context, uuidGenerator);
    }
}
