package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        return Arrays.asList(Component.builder(AbtComponent.class).name(LIBRARY_NAME).add(Dependency.required(Context.class)).add(Dependency.optionalProvider(AnalyticsConnector.class)).factory(new ComponentFactory() { // from class: com.google.firebase.abt.component.AbtRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return AbtRegistrar.$r8$lambda$Mk35yxpgQSsOkasBmzsGbDeDYDs(componentContainer);
            }
        }).build(), LibraryVersionComponent.create(LIBRARY_NAME, "21.1.1"));
    }

    public static /* synthetic */ AbtComponent $r8$lambda$Mk35yxpgQSsOkasBmzsGbDeDYDs(ComponentContainer componentContainer) {
        return new AbtComponent((Context) componentContainer.get(Context.class), componentContainer.getProvider(AnalyticsConnector.class));
    }
}
