package androidx.savedstate;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateRegistryController {
    public static final Companion Companion = new Companion(null);
    private final SavedStateRegistryImpl impl;
    private final SavedStateRegistry savedStateRegistry;

    public /* synthetic */ SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl, DefaultConstructorMarker defaultConstructorMarker) {
        this(savedStateRegistryImpl);
    }

    public static final SavedStateRegistryController create(SavedStateRegistryOwner savedStateRegistryOwner) {
        return Companion.create(savedStateRegistryOwner);
    }

    private SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.impl = savedStateRegistryImpl;
        this.savedStateRegistry = new SavedStateRegistry(savedStateRegistryImpl);
    }

    public final SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistry;
    }

    public final void performAttach() {
        this.impl.performAttach();
    }

    public final void performRestore(Bundle bundle) {
        this.impl.performRestore$savedstate(bundle);
    }

    public final void performSave(Bundle outBundle) {
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        this.impl.performSave$savedstate(outBundle);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SavedStateRegistryController create(final SavedStateRegistryOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new SavedStateRegistryController(new SavedStateRegistryImpl(owner, new Function0() { // from class: androidx.savedstate.SavedStateRegistryController$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SavedStateRegistryController.Companion.create$lambda$0(owner);
                }
            }), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit create$lambda$0(SavedStateRegistryOwner savedStateRegistryOwner) {
            savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(savedStateRegistryOwner));
            return Unit.INSTANCE;
        }
    }
}
