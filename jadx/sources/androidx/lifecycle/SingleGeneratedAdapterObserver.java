package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleGeneratedAdapterObserver implements LifecycleEventObserver {
    public SingleGeneratedAdapterObserver(GeneratedAdapter generatedAdapter) {
        Intrinsics.checkNotNullParameter(generatedAdapter, "generatedAdapter");
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        throw null;
    }
}
