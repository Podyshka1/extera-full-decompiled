package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1903xa7e684e2 implements Factory {
    private final Provider appContextProvider;
    private final Provider blockingDispatcherProvider;
    private final Provider sessionDataSerializerProvider;

    public C1903xa7e684e2(Provider provider, Provider provider2, Provider provider3) {
        this.appContextProvider = provider;
        this.blockingDispatcherProvider = provider2;
        this.sessionDataSerializerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DataStore get() {
        return sessionDataStore((Context) this.appContextProvider.get(), (CoroutineContext) this.blockingDispatcherProvider.get(), (SessionDataSerializer) this.sessionDataSerializerProvider.get());
    }

    public static C1903xa7e684e2 create(Provider provider, Provider provider2, Provider provider3) {
        return new C1903xa7e684e2(provider, provider2, provider3);
    }

    public static DataStore sessionDataStore(Context context, CoroutineContext coroutineContext, SessionDataSerializer sessionDataSerializer) {
        return (DataStore) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.Companion.sessionDataStore(context, coroutineContext, sessionDataSerializer));
    }
}
