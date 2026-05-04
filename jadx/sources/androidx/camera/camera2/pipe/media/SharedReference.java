package androidx.camera.camera2.pipe.media;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class SharedReference {
    private final AtomicInt count;
    private AtomicRef currentFinalizer;
    private final Object value;

    public SharedReference(Object obj, Finalizer defaultFinalizer) {
        Intrinsics.checkNotNullParameter(defaultFinalizer, "defaultFinalizer");
        this.value = obj;
        this.count = AtomicFU.atomic(1);
        this.currentFinalizer = AtomicFU.atomic(defaultFinalizer);
    }

    public final Object acquireOrNull() {
        int value;
        int i;
        AtomicInt atomicInt = this.count;
        do {
            value = atomicInt.getValue();
            i = value == 0 ? 0 : value + 1;
        } while (!atomicInt.compareAndSet(value, i));
        if (i != 0) {
            return this.value;
        }
        return null;
    }

    public final void decrement() {
        if (this.count.decrementAndGet() == 0) {
            Finalizer finalizer = (Finalizer) this.currentFinalizer.getAndSet(null);
            Intrinsics.checkNotNull(finalizer);
            finalizer.finalize(this.value);
        }
    }
}
