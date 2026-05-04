package kotlinx.atomicfu;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TraceBase {
    public void append(Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public static final class None extends TraceBase {
        public static final None INSTANCE = new None();

        private None() {
        }
    }
}
