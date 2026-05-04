package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface ComponentContainer {
    Object get(Qualified qualified);

    Object get(Class cls);

    Deferred getDeferred(Qualified qualified);

    Deferred getDeferred(Class cls);

    Provider getProvider(Qualified qualified);

    Provider getProvider(Class cls);

    Set setOf(Qualified qualified);

    Set setOf(Class cls);

    Provider setOfProvider(Qualified qualified);

    /* JADX INFO: renamed from: com.google.firebase.components.ComponentContainer$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Object $default$get(ComponentContainer componentContainer, Qualified qualified) {
            Provider provider = componentContainer.getProvider(qualified);
            if (provider == null) {
                return null;
            }
            return provider.get();
        }

        public static Set $default$setOf(ComponentContainer componentContainer, Qualified qualified) {
            return (Set) componentContainer.setOfProvider(qualified).get();
        }
    }
}
