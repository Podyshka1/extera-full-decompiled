package androidx.camera.camera2.pipe.graph;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GraphRequestProcessorKt {
    private static final AtomicInt graphRequestProcessorIds = AtomicFU.atomic(0);

    public static final AtomicInt getGraphRequestProcessorIds() {
        return graphRequestProcessorIds;
    }
}
