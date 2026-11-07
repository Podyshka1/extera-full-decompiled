package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001c\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Api35Compat;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "isTorchStrengthSupported", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "getDefaultTorchStrengthLevel", "(Landroidx/camera/camera2/pipe/CameraMetadata;)I", "getMaxTorchStrengthLevel", "format", "Landroid/util/Size;", "surfaceSize", "Landroid/hardware/camera2/params/OutputConfiguration;", "newImageReaderOutputConfiguration", "(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;", "sessionType", _UrlKt.FRAGMENT_ENCODE_SET, "outputs", "Landroid/hardware/camera2/params/SessionConfiguration;", "newSessionConfiguration", "(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;", "Landroid/hardware/camera2/CameraCharacteristics;", "cameraCharacteristics", "Landroid/hardware/camera2/CameraCharacteristics$Key;", "getAvailableSessionCharacteristicsKeys", "(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class Api35Compat {
    public static final Api35Compat INSTANCE = new Api35Compat();

    private Api35Compat() {
    }

    @JvmStatic
    public static final boolean isTorchStrengthSupported(CameraMetadata cameraMetadata) {
        Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL);
        return num != null && num.intValue() > 1;
    }

    @JvmStatic
    public static final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
        Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.FLASH_TORCH_STRENGTH_DEFAULT_LEVEL);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    @JvmStatic
    public static final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
        Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    @JvmStatic
    public static final OutputConfiguration newImageReaderOutputConfiguration(int format, Size surfaceSize) {
        return Api35Compat$$ExternalSyntheticApiModelOutline0.m59m(format, surfaceSize);
    }

    @JvmStatic
    public static final SessionConfiguration newSessionConfiguration(int sessionType, List<OutputConfiguration> outputs) {
        return Api35Compat$$ExternalSyntheticApiModelOutline1.m60m(sessionType, outputs);
    }

    @JvmStatic
    public static final List<CameraCharacteristics.Key<?>> getAvailableSessionCharacteristicsKeys(CameraCharacteristics cameraCharacteristics) {
        return cameraCharacteristics.getAvailableSessionCharacteristicsKeys();
    }
}
