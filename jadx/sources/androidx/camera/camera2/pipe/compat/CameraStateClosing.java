package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraStateClosing extends CameraState {
    private final CameraError cameraErrorCode;

    public /* synthetic */ CameraStateClosing(CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraError);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraStateClosing) && Intrinsics.areEqual(this.cameraErrorCode, ((CameraStateClosing) obj).cameraErrorCode);
    }

    public int hashCode() {
        CameraError cameraError = this.cameraErrorCode;
        if (cameraError == null) {
            return 0;
        }
        return CameraError.m1554hashCodeimpl(cameraError.m1557unboximpl());
    }

    public String toString() {
        return "CameraStateClosing(cameraErrorCode=" + this.cameraErrorCode + ')';
    }

    private CameraStateClosing(CameraError cameraError) {
        super(null);
        this.cameraErrorCode = cameraError;
    }

    public /* synthetic */ CameraStateClosing(CameraError cameraError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cameraError, null);
    }

    /* JADX INFO: renamed from: getCameraErrorCode-mVEW8x0, reason: not valid java name */
    public final CameraError m1846getCameraErrorCodemVEW8x0() {
        return this.cameraErrorCode;
    }
}
