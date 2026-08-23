package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1901x19dc4d73 implements Factory {
    private final Provider firebaseAppProvider;

    public C1901x19dc4d73(Provider provider) {
        this.firebaseAppProvider = provider;
    }

    @Override // javax.inject.Provider
    public ApplicationInfo get() {
        return applicationInfo((FirebaseApp) this.firebaseAppProvider.get());
    }

    public static C1901x19dc4d73 create(Provider provider) {
        return new C1901x19dc4d73(provider);
    }

    public static ApplicationInfo applicationInfo(FirebaseApp firebaseApp) {
        return (ApplicationInfo) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.Companion.applicationInfo(firebaseApp));
    }
}
