package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraCompatibilityFilter {
    public static final CameraCompatibilityFilter INSTANCE = new CameraCompatibilityFilter();

    private CameraCompatibilityFilter() {
    }

    public static final List getBackwardCompatibleCameraIds(CameraDevices cameraDevices, List availableCameraIds) {
        Intrinsics.checkNotNullParameter(cameraDevices, "cameraDevices");
        Intrinsics.checkNotNullParameter(availableCameraIds, "availableCameraIds");
        ArrayList arrayList = new ArrayList();
        Iterator it = availableCameraIds.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (Intrinsics.areEqual(str, MVEL.VERSION_SUB) || Intrinsics.areEqual(str, "1")) {
                arrayList.add(str);
            } else if (isBackwardCompatible(str, cameraDevices)) {
                arrayList.add(str);
            } else {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Camera " + str + " is filtered out because its capabilities do not contain REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE.");
                }
            }
        }
        return arrayList;
    }

    public static final boolean isBackwardCompatible(String cameraId, CameraDevices cameraDevices) throws InitializationException {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(cameraDevices, "cameraDevices");
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled("CXCP")) {
                return true;
            }
            Log.d(Camera2Logger.TRUNCATED_TAG, "isBackwardCompatible method returns true because robolectric build detected.");
            return true;
        }
        try {
            CameraMetadata cameraMetadataM1547awaitCameraMetadataFpsL5FU$default = CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1603constructorimpl(cameraId), null, 2, null);
            if (cameraMetadataM1547awaitCameraMetadataFpsL5FU$default == null) {
                throw new IllegalStateException("Required value was null.");
            }
            CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
            int[] iArr = (int[]) cameraMetadataM1547awaitCameraMetadataFpsL5FU$default.get(REQUEST_AVAILABLE_CAPABILITIES);
            if (iArr != null) {
                return ArraysKt.contains(iArr, 0);
            }
            return false;
        } catch (CameraAccessException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Error while accessing metadata for cameraID: " + cameraId, e);
            }
            throw new InitializationException(e);
        }
    }
}
