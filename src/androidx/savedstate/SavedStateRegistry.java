package androidx.savedstate;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateRegistry {
    private final SavedStateRegistryImpl impl;
    private Recreator.SavedStateProvider recreatorProvider;

    /* JADX INFO: loaded from: classes4.dex */
    public interface AutoRecreated {
        void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    public interface SavedStateProvider {
        Bundle saveState();
    }

    public SavedStateRegistry(SavedStateRegistryImpl impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.impl = impl;
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.consumeRestoredStateForKey(key);
    }

    public final void registerSavedStateProvider(String key, SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.impl.registerSavedStateProvider(key, provider);
    }

    public final SavedStateProvider getSavedStateProvider(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.getSavedStateProvider(key);
    }

    public final void runOnNextRecreation(Class clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (!this.impl.isAllowingSavingState$savedstate()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        Recreator.SavedStateProvider savedStateProvider = this.recreatorProvider;
        if (savedStateProvider == null) {
            savedStateProvider = new Recreator.SavedStateProvider(this);
        }
        this.recreatorProvider = savedStateProvider;
        try {
            clazz.getDeclaredConstructor(null);
            Recreator.SavedStateProvider savedStateProvider2 = this.recreatorProvider;
            if (savedStateProvider2 != null) {
                String name = clazz.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                savedStateProvider2.add(name);
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
