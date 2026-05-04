package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final Qualified appContext;
    private static final Qualified backgroundDispatcher;
    private static final Qualified blockingDispatcher;
    private static final Qualified firebaseApp;
    private static final Qualified firebaseInstallationsApi;
    private static final Qualified firebaseSessionsComponent;
    private static final Qualified transportFactory;

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        return CollectionsKt.listOf((Object[]) new Component[]{Component.builder(FirebaseSessions.class).name(LIBRARY_NAME).add(Dependency.required(firebaseSessionsComponent)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.FirebaseSessionsRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return FirebaseSessionsRegistrar.getComponents$lambda$0(componentContainer);
            }
        }).eagerInDefaultApp().build(), Component.builder(FirebaseSessionsComponent.class).name("fire-sessions-component").add(Dependency.required(appContext)).add(Dependency.required(backgroundDispatcher)).add(Dependency.required(blockingDispatcher)).add(Dependency.required(firebaseApp)).add(Dependency.required(firebaseInstallationsApi)).add(Dependency.requiredProvider(transportFactory)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.FirebaseSessionsRegistrar$$ExternalSyntheticLambda1
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return FirebaseSessionsRegistrar.getComponents$lambda$1(componentContainer);
            }
        }).build(), LibraryVersionComponent.create(LIBRARY_NAME, "3.0.3")});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessions getComponents$lambda$0(ComponentContainer componentContainer) {
        return ((FirebaseSessionsComponent) componentContainer.get(firebaseSessionsComponent)).getFirebaseSessions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessionsComponent getComponents$lambda$1(ComponentContainer componentContainer) {
        FirebaseSessionsComponent.Builder builder = DaggerFirebaseSessionsComponent.builder();
        Object obj = componentContainer.get(appContext);
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        FirebaseSessionsComponent.Builder builderAppContext = builder.appContext((Context) obj);
        Object obj2 = componentContainer.get(backgroundDispatcher);
        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
        FirebaseSessionsComponent.Builder builderBackgroundDispatcher = builderAppContext.backgroundDispatcher((CoroutineContext) obj2);
        Object obj3 = componentContainer.get(blockingDispatcher);
        Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
        FirebaseSessionsComponent.Builder builderBlockingDispatcher = builderBackgroundDispatcher.blockingDispatcher((CoroutineContext) obj3);
        Object obj4 = componentContainer.get(firebaseApp);
        Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
        FirebaseSessionsComponent.Builder builderFirebaseApp = builderBlockingDispatcher.firebaseApp((FirebaseApp) obj4);
        Object obj5 = componentContainer.get(firebaseInstallationsApi);
        Intrinsics.checkNotNullExpressionValue(obj5, "get(...)");
        FirebaseSessionsComponent.Builder builderFirebaseInstallationsApi = builderFirebaseApp.firebaseInstallationsApi((FirebaseInstallationsApi) obj5);
        Provider provider = componentContainer.getProvider(transportFactory);
        Intrinsics.checkNotNullExpressionValue(provider, "getProvider(...)");
        return builderFirebaseInstallationsApi.transportFactoryProvider(provider).build();
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        Qualified qualifiedUnqualified = Qualified.unqualified(Context.class);
        Intrinsics.checkNotNullExpressionValue(qualifiedUnqualified, "unqualified(...)");
        appContext = qualifiedUnqualified;
        Qualified qualifiedUnqualified2 = Qualified.unqualified(FirebaseApp.class);
        Intrinsics.checkNotNullExpressionValue(qualifiedUnqualified2, "unqualified(...)");
        firebaseApp = qualifiedUnqualified2;
        Qualified qualifiedUnqualified3 = Qualified.unqualified(FirebaseInstallationsApi.class);
        Intrinsics.checkNotNullExpressionValue(qualifiedUnqualified3, "unqualified(...)");
        firebaseInstallationsApi = qualifiedUnqualified3;
        Qualified qualified = Qualified.qualified(Background.class, CoroutineDispatcher.class);
        Intrinsics.checkNotNullExpressionValue(qualified, "qualified(...)");
        backgroundDispatcher = qualified;
        Qualified qualified2 = Qualified.qualified(Blocking.class, CoroutineDispatcher.class);
        Intrinsics.checkNotNullExpressionValue(qualified2, "qualified(...)");
        blockingDispatcher = qualified2;
        Qualified qualifiedUnqualified4 = Qualified.unqualified(TransportFactory.class);
        Intrinsics.checkNotNullExpressionValue(qualifiedUnqualified4, "unqualified(...)");
        transportFactory = qualifiedUnqualified4;
        Qualified qualifiedUnqualified5 = Qualified.unqualified(FirebaseSessionsComponent.class);
        Intrinsics.checkNotNullExpressionValue(qualifiedUnqualified5, "unqualified(...)");
        firebaseSessionsComponent = qualifiedUnqualified5;
        try {
            MultiProcessDataStoreFactory.INSTANCE.getClass();
        } catch (NoClassDefFoundError unused) {
            Log.w("FirebaseSessions", "Your app is experiencing a known issue in the Android Gradle plugin, see https://issuetracker.google.com/328687152\n\nIt affects Java-only apps using AGP version 8.3.2 and under. To avoid the issue, either:\n\n1. Upgrade Android Gradle plugin to 8.4.0+\n   Follow the guide at https://developer.android.com/build/agp-upgrade-assistant\n\n2. Or, add the Kotlin plugin to your app\n   Follow the guide at https://developer.android.com/kotlin/add-kotlin\n\n3. Or, do the technical workaround described in https://issuetracker.google.com/issues/328687152#comment3");
        }
    }
}
