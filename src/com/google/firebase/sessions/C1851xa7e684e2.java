package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.dagger.internal.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1851xa7e684e2 implements Factory<DataStore<SessionData>> {
    private final Provider<Context> appContextProvider;
    private final Provider<CoroutineContext> blockingDispatcherProvider;
    private final Provider<SessionDataSerializer> sessionDataSerializerProvider;

    private C1851xa7e684e2(Provider<Context> provider, Provider<CoroutineContext> provider2, Provider<SessionDataSerializer> provider3) {
        this.appContextProvider = provider;
        this.blockingDispatcherProvider = provider2;
        this.sessionDataSerializerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DataStore<SessionData> get() {
        return sessionDataStore(this.appContextProvider.get(), this.blockingDispatcherProvider.get(), this.sessionDataSerializerProvider.get());
    }

    public static C1851xa7e684e2 create(Provider<Context> provider, Provider<CoroutineContext> provider2, Provider<SessionDataSerializer> provider3) {
        return new C1851xa7e684e2(provider, provider2, provider3);
    }

    public static DataStore<SessionData> sessionDataStore(Context context, CoroutineContext coroutineContext, SessionDataSerializer sessionDataSerializer) {
        return (DataStore) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.INSTANCE.sessionDataStore(context, coroutineContext, sessionDataSerializer));
    }
}
