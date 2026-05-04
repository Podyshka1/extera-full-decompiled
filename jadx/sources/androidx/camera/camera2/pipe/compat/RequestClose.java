package androidx.camera.camera2.pipe.compat;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestClose extends CameraRequest {
    private final ActiveCamera activeCamera;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RequestClose) && Intrinsics.areEqual(this.activeCamera, ((RequestClose) obj).activeCamera);
    }

    public int hashCode() {
        return this.activeCamera.hashCode();
    }

    public String toString() {
        return "RequestClose(activeCamera=" + this.activeCamera + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestClose(ActiveCamera activeCamera) {
        super(null);
        Intrinsics.checkNotNullParameter(activeCamera, "activeCamera");
        this.activeCamera = activeCamera;
    }

    public final ActiveCamera getActiveCamera() {
        return this.activeCamera;
    }
}
