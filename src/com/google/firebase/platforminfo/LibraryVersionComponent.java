package com.google.firebase.platforminfo;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;

/* JADX INFO: loaded from: classes.dex */
public abstract class LibraryVersionComponent {

    public interface VersionExtractor<T> {
        String extract(T t);
    }

    public static Component<?> create(String str, String str2) {
        return Component.intoSet(LibraryVersion.create(str, str2), LibraryVersion.class);
    }

    public static Component<?> fromContext(final String str, final VersionExtractor<Context> versionExtractor) {
        return Component.intoSetBuilder(LibraryVersion.class).add(Dependency.required((Class<?>) Context.class)).factory(new ComponentFactory() { // from class: com.google.firebase.platforminfo.LibraryVersionComponent$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return LibraryVersion.create(str, versionExtractor.extract((Context) componentContainer.get(Context.class)));
            }
        }).build();
    }
}
