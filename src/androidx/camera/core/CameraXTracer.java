package androidx.camera.core;

import androidx.tracing.Trace;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraXTracer {
    public static final CameraXTracer INSTANCE = new CameraXTracer();

    private CameraXTracer() {
    }

    public static final void trace(String label, Runnable block) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(block, "block");
        Trace.beginSection("CX:" + label);
        try {
            block.run();
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }
}
