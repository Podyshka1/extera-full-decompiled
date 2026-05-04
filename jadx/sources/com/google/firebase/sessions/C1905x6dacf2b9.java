package com.google.firebase.sessions;

import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_UuidGeneratorFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1905x6dacf2b9 implements Factory {
    @Override // javax.inject.Provider
    public UuidGenerator get() {
        return uuidGenerator();
    }

    public static C1905x6dacf2b9 create() {
        return InstanceHolder.INSTANCE;
    }

    public static UuidGenerator uuidGenerator() {
        return (UuidGenerator) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.Companion.uuidGenerator());
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_UuidGeneratorFactory$InstanceHolder */
    private static final class InstanceHolder {
        private static final C1905x6dacf2b9 INSTANCE = new C1905x6dacf2b9();
    }
}
