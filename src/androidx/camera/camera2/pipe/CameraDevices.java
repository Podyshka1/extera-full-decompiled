package androidx.camera.camera2.pipe;

import java.util.List;
import java.util.Set;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraDevices {
    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo, reason: not valid java name */
    List mo1542awaitCameraIdsSeavPBo(String str);

    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU, reason: not valid java name */
    CameraMetadata mo1543awaitCameraMetadataFpsL5FU(String str, String str2);

    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo, reason: not valid java name */
    Set mo1544awaitConcurrentCameraIdsSeavPBo(String str);

    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo, reason: not valid java name */
    Flow mo1545cameraIdsFlowSeavPBo(String str);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.CameraDevices$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo$default, reason: not valid java name */
        public static /* synthetic */ Flow m1549cameraIdsFlowSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cameraIdsFlow-SeavPBo");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            return cameraDevices.mo1545cameraIdsFlowSeavPBo(str);
        }

        /* JADX INFO: renamed from: awaitCameraIds-SeavPBo$default, reason: not valid java name */
        public static /* synthetic */ List m1546awaitCameraIdsSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitCameraIds-SeavPBo");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            return cameraDevices.mo1542awaitCameraIdsSeavPBo(str);
        }

        /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo$default, reason: not valid java name */
        public static /* synthetic */ Set m1548awaitConcurrentCameraIdsSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitConcurrentCameraIds-SeavPBo");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            return cameraDevices.mo1544awaitConcurrentCameraIdsSeavPBo(str);
        }

        /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU$default, reason: not valid java name */
        public static /* synthetic */ CameraMetadata m1547awaitCameraMetadataFpsL5FU$default(CameraDevices cameraDevices, String str, String str2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitCameraMetadata-FpsL5FU");
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            return cameraDevices.mo1543awaitCameraMetadataFpsL5FU(str, str2);
        }
    }
}
