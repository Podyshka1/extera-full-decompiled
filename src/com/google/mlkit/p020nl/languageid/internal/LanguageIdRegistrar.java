package com.google.mlkit.p020nl.languageid.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_language_id_common.zzu;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierImpl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LanguageIdRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        return zzu.zzi(Component.builder(zzg.class).add(Dependency.required(Context.class)).add(Dependency.setOf(LanguageIdentifierCreatorDelegate.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.nl.languageid.internal.zza
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                ArrayList arrayList = new ArrayList(componentContainer.setOf(LanguageIdentifierCreatorDelegate.class));
                Preconditions.checkState(!arrayList.isEmpty(), "No delegate creator registered.");
                Collections.sort(arrayList, new Comparator() { // from class: com.google.mlkit.nl.languageid.internal.zzc
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ((LanguageIdentifierCreatorDelegate) obj2).getPriority() - ((LanguageIdentifierCreatorDelegate) obj).getPriority();
                    }
                });
                return new zzg((Context) componentContainer.get(Context.class), (LanguageIdentifierCreatorDelegate) arrayList.get(0));
            }
        }).build(), Component.builder(LanguageIdentifierImpl.Factory.class).add(Dependency.required(zzg.class)).add(Dependency.required(ExecutorSelector.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.nl.languageid.internal.zzb
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new LanguageIdentifierImpl.Factory((zzg) componentContainer.get(zzg.class), (ExecutorSelector) componentContainer.get(ExecutorSelector.class));
            }
        }).build());
    }
}
