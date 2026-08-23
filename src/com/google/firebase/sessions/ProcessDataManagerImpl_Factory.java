package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDataManagerImpl_Factory implements Factory {
    private final Provider appContextProvider;
    private final Provider uuidGeneratorProvider;

    public ProcessDataManagerImpl_Factory(Provider provider, Provider provider2) {
        this.appContextProvider = provider;
        this.uuidGeneratorProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ProcessDataManagerImpl get() {
        return newInstance((Context) this.appContextProvider.get(), (UuidGenerator) this.uuidGeneratorProvider.get());
    }

    public static ProcessDataManagerImpl_Factory create(Provider provider, Provider provider2) {
        return new ProcessDataManagerImpl_Factory(provider, provider2);
    }

    public static ProcessDataManagerImpl newInstance(Context context, UuidGenerator uuidGenerator) {
        return new ProcessDataManagerImpl(context, uuidGenerator);
    }
}
