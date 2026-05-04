package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1902x884ab35 implements Factory {
    private final Provider appContextProvider;
    private final Provider blockingDispatcherProvider;

    public C1902x884ab35(Provider provider, Provider provider2) {
        this.appContextProvider = provider;
        this.blockingDispatcherProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DataStore get() {
        return sessionConfigsDataStore((Context) this.appContextProvider.get(), (CoroutineContext) this.blockingDispatcherProvider.get());
    }

    public static C1902x884ab35 create(Provider provider, Provider provider2) {
        return new C1902x884ab35(provider, provider2);
    }

    public static DataStore sessionConfigsDataStore(Context context, CoroutineContext coroutineContext) {
        return (DataStore) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore(context, coroutineContext));
    }
}
