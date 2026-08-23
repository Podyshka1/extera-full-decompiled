package androidx.camera.camera2.pipe.internal;

import android.os.Trace;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraDevicesImpl implements CameraDevices {
    private final CameraBackends cameraBackends;

    public CameraDevicesImpl(CameraBackends cameraBackends) {
        Intrinsics.checkNotNullParameter(cameraBackends, "cameraBackends");
        this.cameraBackends = cameraBackends;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo */
    public Flow mo1545cameraIdsFlowSeavPBo(String str) {
        return m1934getCameraBackendSeavPBo(str).getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo */
    public List mo1542awaitCameraIdsSeavPBo(String str) {
        CameraBackend cameraBackendM1934getCameraBackendSeavPBo = m1934getCameraBackendSeavPBo(str);
        List listAwaitCameraIds = cameraBackendM1934getCameraBackendSeavPBo.awaitCameraIds();
        if (listAwaitCameraIds == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to load cameraIds from " + ((Object) CameraBackendId.m1531toStringimpl(cameraBackendM1934getCameraBackendSeavPBo.mo1524getIdQwmhuAM())));
        }
        return listAwaitCameraIds;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo */
    public Set mo1544awaitConcurrentCameraIdsSeavPBo(String str) {
        return m1934getCameraBackendSeavPBo(str).awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU */
    public CameraMetadata mo1543awaitCameraMetadataFpsL5FU(String cameraId, String str) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        CameraBackend cameraBackendM1934getCameraBackendSeavPBo = m1934getCameraBackendSeavPBo(str);
        CameraMetadata cameraMetadataMo1523awaitCameraMetadataEfqyGwQ = cameraBackendM1934getCameraBackendSeavPBo.mo1523awaitCameraMetadataEfqyGwQ(cameraId);
        if (cameraMetadataMo1523awaitCameraMetadataEfqyGwQ == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to load metadata for " + ((Object) CameraId.m1607toStringimpl(cameraId)) + " from " + ((Object) CameraBackendId.m1531toStringimpl(cameraBackendM1934getCameraBackendSeavPBo.mo1524getIdQwmhuAM())));
        }
        return cameraMetadataMo1523awaitCameraMetadataEfqyGwQ;
    }

    /* JADX INFO: renamed from: getCameraBackend-SeavPBo, reason: not valid java name */
    private final CameraBackend m1934getCameraBackendSeavPBo(String str) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("getCameraBackend");
            if (str == null) {
                str = this.cameraBackends.getDefault().mo1524getIdQwmhuAM();
            }
            CameraBackend cameraBackendMo1533getSG3A4s8 = this.cameraBackends.mo1533getSG3A4s8(str);
            if (cameraBackendMo1533getSG3A4s8 != null) {
                Trace.endSection();
                return cameraBackendMo1533getSG3A4s8;
            }
            throw new IllegalStateException(("Failed to load CameraBackend " + ((Object) CameraBackendId.m1531toStringimpl(str))).toString());
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
