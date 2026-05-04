package androidx.camera.extensions.internal;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.compat.Camera2MetadataCache$$ExternalSyntheticApiModelOutline0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Camera2ExtensionsInfo {
    private static final Companion Companion = new Companion(null);
    private final Map cachedCharacteristics;
    private final Map cachedSupportedExtensions;
    private final Map cachedSupportedOutputSizes;
    private final CameraManager cameraManager;
    private final Object lock;

    public Camera2ExtensionsInfo(CameraManager cameraManager) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        this.cameraManager = cameraManager;
        this.lock = new Object();
        this.cachedCharacteristics = new LinkedHashMap();
        this.cachedSupportedOutputSizes = new LinkedHashMap();
        this.cachedSupportedExtensions = new LinkedHashMap();
    }

    public CameraExtensionCharacteristics getExtensionCharacteristics(String cameraId) {
        CameraExtensionCharacteristics cameraExtensionCharacteristicsM68m;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        synchronized (this.lock) {
            cameraExtensionCharacteristicsM68m = Camera2MetadataCache$$ExternalSyntheticApiModelOutline0.m68m(this.cachedCharacteristics.get(cameraId));
            if (cameraExtensionCharacteristicsM68m == null) {
                cameraExtensionCharacteristicsM68m = this.cameraManager.getCameraExtensionCharacteristics(cameraId);
                this.cachedCharacteristics.put(cameraId, cameraExtensionCharacteristicsM68m);
                Intrinsics.checkNotNullExpressionValue(cameraExtensionCharacteristicsM68m, "also(...)");
            }
        }
        return cameraExtensionCharacteristicsM68m;
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
