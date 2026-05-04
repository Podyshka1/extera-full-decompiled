package com.google.firebase.messaging;

import androidx.annotation.Keep;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.datatransport.TransportBackend;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<Component> getComponents() {
        final Qualified qualified = Qualified.qualified(TransportBackend.class, TransportFactory.class);
        return Arrays.asList(Component.builder(FirebaseMessaging.class).name(LIBRARY_NAME).add(Dependency.required(FirebaseApp.class)).add(Dependency.optional(FirebaseInstanceIdInternal.class)).add(Dependency.optionalProvider(UserAgentPublisher.class)).add(Dependency.optionalProvider(HeartBeatInfo.class)).add(Dependency.required(FirebaseInstallationsApi.class)).add(Dependency.optionalProvider(qualified)).add(Dependency.required(Subscriber.class)).factory(new ComponentFactory() { // from class: com.google.firebase.messaging.FirebaseMessagingRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return FirebaseMessagingRegistrar.$r8$lambda$h3MOJYVcG4o8djeewqRx1Jpi3s8(qualified, componentContainer);
            }
        }).alwaysEager().build(), LibraryVersionComponent.create(LIBRARY_NAME, "25.0.1"));
    }

    public static /* synthetic */ FirebaseMessaging $r8$lambda$h3MOJYVcG4o8djeewqRx1Jpi3s8(Qualified qualified, ComponentContainer componentContainer) {
        FirebaseApp firebaseApp = (FirebaseApp) componentContainer.get(FirebaseApp.class);
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(componentContainer.get(FirebaseInstanceIdInternal.class));
        return new FirebaseMessaging(firebaseApp, null, componentContainer.getProvider(UserAgentPublisher.class), componentContainer.getProvider(HeartBeatInfo.class), (FirebaseInstallationsApi) componentContainer.get(FirebaseInstallationsApi.class), componentContainer.getProvider(qualified), (Subscriber) componentContainer.get(Subscriber.class));
    }
}
