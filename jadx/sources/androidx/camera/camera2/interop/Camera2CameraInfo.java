package androidx.camera.camera2.interop;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.AdapterCameraInfo;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraInfo {
    public static final Companion Companion = new Companion(null);
    public final /* synthetic */ String cameraId;
    private final CameraProperties cameraProperties;
    private final List extensionsSpecificChars;

    public static final Camera2CameraInfo from(CameraInfo cameraInfo) {
        return Companion.from(cameraInfo);
    }

    private Camera2CameraInfo(CameraProperties cameraProperties, List list) {
        this.cameraProperties = cameraProperties;
        this.extensionsSpecificChars = list;
        this.cameraId = cameraProperties.mo1439getCameraIdDz_R5H8();
    }

    /* synthetic */ Camera2CameraInfo(CameraProperties cameraProperties, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraProperties, (i & 2) != 0 ? null : list);
    }

    public final Object getCameraCharacteristic(CameraCharacteristics.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        List<Pair> list = this.extensionsSpecificChars;
        if (list != null) {
            for (Pair pair : list) {
                if (Intrinsics.areEqual(pair.first, key)) {
                    return pair.second;
                }
            }
        }
        return CameraMetadataSafeGetterKt.getSafely(this.cameraProperties.getMetadata(), key);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Camera2CameraInfo from(CameraInfo cameraInfo) {
            Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
            Camera2CameraInfo camera2CameraInfo = (Camera2CameraInfo) CameraInfoAdapter.Companion.unwrapAs(cameraInfo, Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class));
            if (camera2CameraInfo == null) {
                throw new IllegalArgumentException(("Could not unwrap " + cameraInfo + " as Camera2CameraInfo!").toString());
            }
            if (cameraInfo instanceof AdapterCameraInfo) {
                ((AdapterCameraInfo) cameraInfo).getSessionProcessor();
            }
            return camera2CameraInfo;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Camera2CameraInfo create(CameraProperties cameraProperties) {
            Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
            return new Camera2CameraInfo(cameraProperties, null, 2, 0 == true ? 1 : 0);
        }
    }
}
