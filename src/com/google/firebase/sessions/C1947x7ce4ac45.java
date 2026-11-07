package com.google.firebase.sessions;

import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1947x7ce4ac45 implements Factory<TimeProvider> {

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder */
    public static final class InstanceHolder {
        static final C1947x7ce4ac45 INSTANCE = new C1947x7ce4ac45();
    }

    @Override // javax.inject.Provider
    public TimeProvider get() {
        return timeProvider();
    }

    public static C1947x7ce4ac45 create() {
        return InstanceHolder.INSTANCE;
    }

    public static TimeProvider timeProvider() {
        return (TimeProvider) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.INSTANCE.timeProvider());
    }
}
