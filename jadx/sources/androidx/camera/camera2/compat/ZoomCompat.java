package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public interface ZoomCompat {
    Deferred applyAsync(float f, UseCaseCameraRequestControl useCaseCameraRequestControl);

    Rect getCropSensorRegion();

    float getMaxZoomRatio();

    float getMinZoomRatio();

    Deferred resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final ZoomCompat provideZoomCompat(CameraProperties cameraProperties) {
                Range controlZoomRatioRangeSafely;
                Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
                if (Intrinsics.areEqual("robolectric", Build.FINGERPRINT)) {
                    List<CameraCharacteristics.Key> requiredCharacteristics = NoOpZoomCompat.Companion.getRequiredCharacteristics();
                    if (!(requiredCharacteristics instanceof Collection) || !requiredCharacteristics.isEmpty()) {
                        for (CameraCharacteristics.Key key : requiredCharacteristics) {
                            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled("CXCP")) {
                                Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read " + key + " for zoom features.");
                            }
                            CameraMetadata metadata = cameraProperties.getMetadata();
                            Intrinsics.checkNotNull(key);
                            if (metadata.get(key) == null) {
                                return new NoOpZoomCompat(cameraProperties);
                            }
                        }
                    }
                } else if (Build.VERSION.SDK_INT >= 30 && (controlZoomRatioRangeSafely = CameraMetadataSafeGetterKt.getControlZoomRatioRangeSafely(cameraProperties.getMetadata())) != null) {
                    return new AndroidRZoomCompat(cameraProperties, controlZoomRatioRangeSafely);
                }
                return new CropRegionZoomCompat(cameraProperties);
            }
        }
    }
}
