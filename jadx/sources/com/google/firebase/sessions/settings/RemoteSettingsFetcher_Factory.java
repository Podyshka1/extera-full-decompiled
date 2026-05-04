package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSettingsFetcher_Factory implements Factory {
    private final Provider appInfoProvider;
    private final Provider blockingDispatcherProvider;

    public RemoteSettingsFetcher_Factory(Provider provider, Provider provider2) {
        this.appInfoProvider = provider;
        this.blockingDispatcherProvider = provider2;
    }

    @Override // javax.inject.Provider
    public RemoteSettingsFetcher get() {
        return newInstance((ApplicationInfo) this.appInfoProvider.get(), (CoroutineContext) this.blockingDispatcherProvider.get());
    }

    public static RemoteSettingsFetcher_Factory create(Provider provider, Provider provider2) {
        return new RemoteSettingsFetcher_Factory(provider, provider2);
    }

    public static RemoteSettingsFetcher newInstance(ApplicationInfo applicationInfo, CoroutineContext coroutineContext) {
        return new RemoteSettingsFetcher(applicationInfo, coroutineContext);
    }
}
