package androidx.camera.camera2.pipe;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ConcurrentCameraGraphs {
    private final Set cameraGraphIds;
    private final Set cameraIds;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConcurrentCameraGraphs)) {
            return false;
        }
        ConcurrentCameraGraphs concurrentCameraGraphs = (ConcurrentCameraGraphs) obj;
        return Intrinsics.areEqual(this.cameraGraphIds, concurrentCameraGraphs.cameraGraphIds) && Intrinsics.areEqual(this.cameraIds, concurrentCameraGraphs.cameraIds);
    }

    public int hashCode() {
        return (this.cameraGraphIds.hashCode() * 31) + this.cameraIds.hashCode();
    }

    public String toString() {
        return "ConcurrentCameraGraphs(cameraGraphIds=" + this.cameraGraphIds + ", cameraIds=" + this.cameraIds + ')';
    }

    public ConcurrentCameraGraphs(Set cameraGraphIds, Set cameraIds) {
        Intrinsics.checkNotNullParameter(cameraGraphIds, "cameraGraphIds");
        Intrinsics.checkNotNullParameter(cameraIds, "cameraIds");
        this.cameraGraphIds = cameraGraphIds;
        this.cameraIds = cameraIds;
        if (cameraGraphIds.size() <= 1) {
            throw new IllegalStateException("Check failed.");
        }
        if (cameraGraphIds.size() != cameraIds.size()) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final Set getCameraGraphIds() {
        return this.cameraGraphIds;
    }

    public final Set getCameraIds() {
        return this.cameraIds;
    }
}
