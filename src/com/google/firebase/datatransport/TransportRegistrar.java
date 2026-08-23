package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        return Arrays.asList(Component.builder(TransportFactory.class).name(LIBRARY_NAME).add(Dependency.required(Context.class)).factory(new ComponentFactory() { // from class: com.google.firebase.datatransport.TransportRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return TransportRegistrar.$r8$lambda$QkqDNTnBQvxCK9qVVo8puvSQXG0(componentContainer);
            }
        }).build(), Component.builder(Qualified.qualified(LegacyTransportBackend.class, TransportFactory.class)).add(Dependency.required(Context.class)).factory(new ComponentFactory() { // from class: com.google.firebase.datatransport.TransportRegistrar$$ExternalSyntheticLambda1
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return TransportRegistrar.$r8$lambda$Q9p8Nf35Faci7Q8zAMPraOdCTJ0(componentContainer);
            }
        }).build(), Component.builder(Qualified.qualified(TransportBackend.class, TransportFactory.class)).add(Dependency.required(Context.class)).factory(new ComponentFactory() { // from class: com.google.firebase.datatransport.TransportRegistrar$$ExternalSyntheticLambda2
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return TransportRegistrar.m3537$r8$lambda$5PSoDbsAOSc7vMtr9P22GdjNQw(componentContainer);
            }
        }).build(), LibraryVersionComponent.create(LIBRARY_NAME, "19.0.0"));
    }

    public static /* synthetic */ TransportFactory $r8$lambda$QkqDNTnBQvxCK9qVVo8puvSQXG0(ComponentContainer componentContainer) {
        TransportRuntime.initialize((Context) componentContainer.get(Context.class));
        return TransportRuntime.getInstance().newFactory(CCTDestination.LEGACY_INSTANCE);
    }

    public static /* synthetic */ TransportFactory $r8$lambda$Q9p8Nf35Faci7Q8zAMPraOdCTJ0(ComponentContainer componentContainer) {
        TransportRuntime.initialize((Context) componentContainer.get(Context.class));
        return TransportRuntime.getInstance().newFactory(CCTDestination.LEGACY_INSTANCE);
    }

    /* JADX INFO: renamed from: $r8$lambda$5P-SoDbsAOSc7vMtr9P22GdjNQw, reason: not valid java name */
    public static /* synthetic */ TransportFactory m3537$r8$lambda$5PSoDbsAOSc7vMtr9P22GdjNQw(ComponentContainer componentContainer) {
        TransportRuntime.initialize((Context) componentContainer.get(Context.class));
        return TransportRuntime.getInstance().newFactory(CCTDestination.INSTANCE);
    }
}
