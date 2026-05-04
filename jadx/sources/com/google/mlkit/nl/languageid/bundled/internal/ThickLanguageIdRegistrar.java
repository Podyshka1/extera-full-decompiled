package com.google.mlkit.nl.languageid.bundled.internal;

import com.google.android.gms.internal.mlkit_language_id_bundled.zbi;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.mlkit.nl.languageid.internal.LanguageIdentifierCreatorDelegate;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ThickLanguageIdRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        return zbi.zbg(Component.intoSetBuilder(LanguageIdentifierCreatorDelegate.class).factory(new ComponentFactory() { // from class: com.google.mlkit.nl.languageid.bundled.internal.zba
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new zbb();
            }
        }).build());
    }
}
