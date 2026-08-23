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
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/internal/CameraCompatibilityFilter;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getBackwardCompatibleCameraIds", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "cameraDevices", "Landroidx/camera/camera2/pipe/CameraDevices;", "availableCameraIds", "isBackwardCompatible", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraCompatibilityFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraCompatibilityFilter.kt\nandroidx/camera/camera2/internal/CameraCompatibilityFilter\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,87:1\n85#2,4:88\n85#2,4:92\n146#2,4:96\n*S KotlinDebug\n*F\n+ 1 CameraCompatibilityFilter.kt\nandroidx/camera/camera2/internal/CameraCompatibilityFilter\n*L\n50#1:88,4\n65#1:92,4\n80#1:96,4\n*E\n"})
public final class CameraCompatibilityFilter {
    public static final CameraCompatibilityFilter INSTANCE = new CameraCompatibilityFilter();

    private CameraCompatibilityFilter() {
    }

    @JvmStatic
    public static final List<String> getBackwardCompatibleCameraIds(CameraDevices cameraDevices, List<String> availableCameraIds) {
        ArrayList arrayList = new ArrayList();
        for (String str : availableCameraIds) {
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

    @JvmStatic
    public static final boolean isBackwardCompatible(String cameraId, CameraDevices cameraDevices) throws InitializationException {
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled("CXCP")) {
                return true;
            }
            Log.d(Camera2Logger.TRUNCATED_TAG, "isBackwardCompatible method returns true because robolectric build detected.");
            return true;
        }
        try {
            CameraMetadata cameraMetadataM1149awaitCameraMetadataFpsL5FU$default = CameraDevices.m1149awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1209constructorimpl(cameraId), null, 2, null);
            if (cameraMetadataM1149awaitCameraMetadataFpsL5FU$default == null) {
                throw new IllegalStateException("Required value was null.");
            }
            int[] iArr = (int[]) cameraMetadataM1149awaitCameraMetadataFpsL5FU$default.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
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
