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
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.Flow;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ%\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0018\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0018\u00010\u00152\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001e¨\u0006\u001f"}, d2 = {"Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;", "Landroidx/camera/camera2/pipe/CameraDevices;", "Landroidx/camera/camera2/pipe/CameraBackends;", "cameraBackends", "<init>", "(Landroidx/camera/camera2/pipe/CameraBackends;)V", "Landroidx/camera/camera2/pipe/CameraBackendId;", "cameraBackendId", "Landroidx/camera/camera2/pipe/CameraBackend;", "getCameraBackend-SeavPBo", "(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;", "getCameraBackend", "Lkotlinx/coroutines/flow/Flow;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "cameraIdsFlow-SeavPBo", "(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;", "cameraIdsFlow", "awaitCameraIds-SeavPBo", "(Ljava/lang/String;)Ljava/util/List;", "awaitCameraIds", _UrlKt.FRAGMENT_ENCODE_SET, "awaitConcurrentCameraIds-SeavPBo", "(Ljava/lang/String;)Ljava/util/Set;", "awaitConcurrentCameraIds", "cameraId", "Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitCameraMetadata-FpsL5FU", "(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitCameraMetadata", "Landroidx/camera/camera2/pipe/CameraBackends;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraDevicesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraDevicesImpl.kt\nandroidx/camera/camera2/pipe/internal/CameraDevicesImpl\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n71#2,2:160\n71#2,2:162\n71#2,2:164\n71#2,2:166\n48#3,2:168\n71#3,4:170\n50#3:174\n52#3:176\n78#3,4:177\n1#4:175\n*S KotlinDebug\n*F\n+ 1 CameraDevicesImpl.kt\nandroidx/camera/camera2/pipe/internal/CameraDevicesImpl\n*L\n74#1:160,2\n83#1:162,2\n107#1:164,2\n119#1:166,2\n153#1:168,2\n153#1:170,4\n153#1:174\n153#1:176\n153#1:177,4\n*E\n"})
public final class CameraDevicesImpl implements CameraDevices {
    private final CameraBackends cameraBackends;

    public CameraDevicesImpl(CameraBackends cameraBackends) {
        this.cameraBackends = cameraBackends;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo */
    public Flow<List<CameraId>> mo1245cameraIdsFlowSeavPBo(String cameraBackendId) {
        return m1621getCameraBackendSeavPBo(cameraBackendId).getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo */
    public List<CameraId> mo1242awaitCameraIdsSeavPBo(String cameraBackendId) {
        CameraBackend cameraBackendM1621getCameraBackendSeavPBo = m1621getCameraBackendSeavPBo(cameraBackendId);
        List<CameraId> listAwaitCameraIds = cameraBackendM1621getCameraBackendSeavPBo.awaitCameraIds();
        if (listAwaitCameraIds == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to load cameraIds from " + ((Object) CameraBackendId.m1227toStringimpl(cameraBackendM1621getCameraBackendSeavPBo.mo1220getIdQwmhuAM())));
        }
        return listAwaitCameraIds;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo */
    public Set<Set<CameraId>> mo1244awaitConcurrentCameraIdsSeavPBo(String cameraBackendId) {
        return m1621getCameraBackendSeavPBo(cameraBackendId).awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU */
    public CameraMetadata mo1243awaitCameraMetadataFpsL5FU(String cameraId, String cameraBackendId) {
        CameraBackend cameraBackendM1621getCameraBackendSeavPBo = m1621getCameraBackendSeavPBo(cameraBackendId);
        CameraMetadata cameraMetadataMo1219awaitCameraMetadataEfqyGwQ = cameraBackendM1621getCameraBackendSeavPBo.mo1219awaitCameraMetadataEfqyGwQ(cameraId);
        if (cameraMetadataMo1219awaitCameraMetadataEfqyGwQ == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to load metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + " from " + ((Object) CameraBackendId.m1227toStringimpl(cameraBackendM1621getCameraBackendSeavPBo.mo1220getIdQwmhuAM())));
        }
        return cameraMetadataMo1219awaitCameraMetadataEfqyGwQ;
    }

    /* JADX INFO: renamed from: getCameraBackend-SeavPBo, reason: not valid java name */
    private final CameraBackend m1621getCameraBackendSeavPBo(String cameraBackendId) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("getCameraBackend");
            if (cameraBackendId == null) {
                cameraBackendId = this.cameraBackends.getDefault().mo1220getIdQwmhuAM();
            }
            CameraBackend cameraBackendMo1229getSG3A4s8 = this.cameraBackends.mo1229getSG3A4s8(cameraBackendId);
            if (cameraBackendMo1229getSG3A4s8 != null) {
                return cameraBackendMo1229getSG3A4s8;
            }
            throw new IllegalStateException(("Failed to load CameraBackend " + ((Object) CameraBackendId.m1227toStringimpl(cameraBackendId))).toString());
        } finally {
            Trace.endSection();
        }
    }
}
