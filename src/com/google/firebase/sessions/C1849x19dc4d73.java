package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C1849x19dc4d73 implements Factory<ApplicationInfo> {
    private final Provider<FirebaseApp> firebaseAppProvider;

    private C1849x19dc4d73(Provider<FirebaseApp> provider) {
        this.firebaseAppProvider = provider;
    }

    @Override // javax.inject.Provider
    public ApplicationInfo get() {
        return applicationInfo(this.firebaseAppProvider.get());
    }

    public static C1849x19dc4d73 create(Provider<FirebaseApp> provider) {
        return new C1849x19dc4d73(provider);
    }

    public static ApplicationInfo applicationInfo(FirebaseApp firebaseApp) {
        return (ApplicationInfo) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.INSTANCE.applicationInfo(firebaseApp));
    }
}
