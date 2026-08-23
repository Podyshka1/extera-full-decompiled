package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphId {
    public static final Companion Companion = new Companion(null);
    private static final AtomicInt cameraGraphIds = AtomicFU.atomic(0);
    private final String name;

    public /* synthetic */ CameraGraphId(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private CameraGraphId(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CameraGraphId nextId() {
            return new CameraGraphId("CameraGraph-" + CameraGraphId.cameraGraphIds.incrementAndGet(), null);
        }
    }
}
