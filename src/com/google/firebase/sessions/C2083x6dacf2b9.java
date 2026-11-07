package com.google.firebase.sessions;

import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_UuidGeneratorFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C2083x6dacf2b9 implements Factory<UuidGenerator> {

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_UuidGeneratorFactory$InstanceHolder */
    public static final class InstanceHolder {
        static final C2083x6dacf2b9 INSTANCE = new C2083x6dacf2b9();
    }

    @Override // javax.inject.Provider
    public UuidGenerator get() {
        return uuidGenerator();
    }

    public static C2083x6dacf2b9 create() {
        return InstanceHolder.INSTANCE;
    }

    public static UuidGenerator uuidGenerator() {
        return (UuidGenerator) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.INSTANCE.uuidGenerator());
    }
}
