package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.core.Logger;
import java.nio.BufferUnderflowException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0001¨\u0006\u0004"}, d2 = {"isFlashAvailable", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/impl/CameraProperties;", "allowRethrowOnError", "camera-camera2"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFlashAvailabilityChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlashAvailabilityChecker.kt\nandroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,72:1\n85#2,4:73\n146#2,4:77\n119#2,4:81\n*S KotlinDebug\n*F\n+ 1 FlashAvailabilityChecker.kt\nandroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt\n*L\n44#1:73,4\n50#1:77,4\n66#1:81,4\n*E\n"})
public abstract class FlashAvailabilityCheckerKt {
    public static /* synthetic */ boolean isFlashAvailable$default(CameraProperties cameraProperties, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return isFlashAvailable(cameraProperties, z);
    }

    public static final boolean isFlashAvailable(CameraProperties cameraProperties, boolean z) {
        Boolean bool;
        try {
            bool = (Boolean) cameraProperties.getMetadata().get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
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
