package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class LifecycleRegistryKt {
    public static final void checkLifecycleStateTransition(LifecycleOwner lifecycleOwner, Lifecycle.State current, Lifecycle.State next) {
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(next, "next");
        if (current == Lifecycle.State.INITIALIZED && next == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("State must be at least '" + Lifecycle.State.CREATED + "' to be moved to '" + next + "' in component " + lifecycleOwner).toString());
        }
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        if (current != state || current == next) {
            return;
        }
        throw new IllegalStateException(("State is '" + state + "' and cannot be moved to `" + next + "` in component " + lifecycleOwner).toString());
    }
}
