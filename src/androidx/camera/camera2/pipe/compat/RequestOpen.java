package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.pipe.graph.GraphListener;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestOpen extends CameraRequest {
    private final GraphListener graphListener;
    private final Function1 isForegroundObserver;
    private final boolean isPrewarm;
    private final List sharedCameraIds;
    private final VirtualCameraState virtualCamera;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestOpen)) {
            return false;
        }
        RequestOpen requestOpen = (RequestOpen) obj;
        return Intrinsics.areEqual(this.virtualCamera, requestOpen.virtualCamera) && Intrinsics.areEqual(this.sharedCameraIds, requestOpen.sharedCameraIds) && Intrinsics.areEqual(this.graphListener, requestOpen.graphListener) && this.isPrewarm == requestOpen.isPrewarm && Intrinsics.areEqual(this.isForegroundObserver, requestOpen.isForegroundObserver);
    }

    public int hashCode() {
        return (((((((this.virtualCamera.hashCode() * 31) + this.sharedCameraIds.hashCode()) * 31) + this.graphListener.hashCode()) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isPrewarm)) * 31) + this.isForegroundObserver.hashCode();
    }

    public String toString() {
        return "RequestOpen(virtualCamera=" + this.virtualCamera + ", sharedCameraIds=" + this.sharedCameraIds + ", graphListener=" + this.graphListener + ", isPrewarm=" + this.isPrewarm + ", isForegroundObserver=" + this.isForegroundObserver + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestOpen(VirtualCameraState virtualCamera, List sharedCameraIds, GraphListener graphListener, boolean z, Function1 isForegroundObserver) {
        super(null);
        Intrinsics.checkNotNullParameter(virtualCamera, "virtualCamera");
        Intrinsics.checkNotNullParameter(sharedCameraIds, "sharedCameraIds");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(isForegroundObserver, "isForegroundObserver");
        this.virtualCamera = virtualCamera;
        this.sharedCameraIds = sharedCameraIds;
        this.graphListener = graphListener;
        this.isPrewarm = z;
        this.isForegroundObserver = isForegroundObserver;
    }

    public final VirtualCameraState getVirtualCamera() {
        return this.virtualCamera;
    }

    public final List getSharedCameraIds() {
        return this.sharedCameraIds;
    }

    public final boolean isPrewarm() {
        return this.isPrewarm;
    }

    public final Function1 isForegroundObserver() {
        return this.isForegroundObserver;
    }
}
