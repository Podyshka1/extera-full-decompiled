package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.FirebaseApp;
import com.google.firebase.abt.component.AbtComponent;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        final Qualified qualified = Qualified.qualified(Blocking.class, ScheduledExecutorService.class);
        return Arrays.asList(Component.builder(RemoteConfigComponent.class, FirebaseRemoteConfigInterop.class).name(LIBRARY_NAME).add(Dependency.required(Context.class)).add(Dependency.required(qualified)).add(Dependency.required(FirebaseApp.class)).add(Dependency.required(FirebaseInstallationsApi.class)).add(Dependency.required(AbtComponent.class)).add(Dependency.optionalProvider(AnalyticsConnector.class)).factory(new ComponentFactory() { // from class: com.google.firebase.remoteconfig.RemoteConfigRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return RemoteConfigRegistrar.m3554$r8$lambda$IeHOsPjkb5eYNLpYHwuM_yIUHY(qualified, componentContainer);
            }
        }).eagerInDefaultApp().build(), LibraryVersionComponent.create(LIBRARY_NAME, "23.0.1"));
    }

    /* JADX INFO: renamed from: $r8$lambda$IeHOsPj-kb5eYNLpYHwuM_yIUHY, reason: not valid java name */
    public static /* synthetic */ RemoteConfigComponent m3554$r8$lambda$IeHOsPjkb5eYNLpYHwuM_yIUHY(Qualified qualified, ComponentContainer componentContainer) {
        return new RemoteConfigComponent((Context) componentContainer.get(Context.class), (ScheduledExecutorService) componentContainer.get(qualified), (FirebaseApp) componentContainer.get(FirebaseApp.class), (FirebaseInstallationsApi) componentContainer.get(FirebaseInstallationsApi.class), ((AbtComponent) componentContainer.get(AbtComponent.class)).get("frc"), componentContainer.getProvider(AnalyticsConnector.class));
    }
}
