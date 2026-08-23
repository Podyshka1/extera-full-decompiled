package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import java.nio.BufferUnderflowException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FlashAvailabilityCheckerKt {
    public static /* synthetic */ boolean isFlashAvailable$default(CameraProperties cameraProperties, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return isFlashAvailable(cameraProperties, z);
    }

    public static final boolean isFlashAvailable(CameraProperties cameraProperties, boolean z) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(cameraProperties, "<this>");
        try {
            CameraMetadata metadata = cameraProperties.getMetadata();
            CameraCharacteristics.Key FLASH_INFO_AVAILABLE = CameraCharacteristics.FLASH_INFO_AVAILABLE;
            Intrinsics.checkNotNullExpressionValue(FLASH_INFO_AVAILABLE, "FLASH_INFO_AVAILABLE");
            bool = (Boolean) metadata.get(FLASH_INFO_AVAILABLE);
        } catch (BufferUnderflowException e) {
            if (DeviceQuirks.INSTANCE.get(FlashAvailabilityBufferUnderflowQuirk.class) != null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Device is known to throw an exception while checking flash availability. Flash is not available. [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "].");
                }
            } else {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Exception thrown while checking for flash availability on device not known to throw exceptions during this check. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "]. Flash is not available.", e);
                }
            }
            if (z) {
                throw e;
            }
            bool = Boolean.FALSE;
        }
        if (bool == null) {
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Characteristics did not contain key FLASH_INFO_AVAILABLE. Flash is not available.");
            }
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
