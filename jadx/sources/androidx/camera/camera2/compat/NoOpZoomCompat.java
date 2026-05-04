package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class NoOpZoomCompat implements ZoomCompat {
    public static final Companion Companion = new Companion(null);
    private static final List requiredCharacteristics = CollectionsKt.listOf(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
    private final CameraProperties cameraProperties;
    private final float maxZoomRatio;
    private final float minZoomRatio;

    public NoOpZoomCompat(CameraProperties cameraProperties) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        this.cameraProperties = cameraProperties;
        this.minZoomRatio = 1.0f;
        this.maxZoomRatio = 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred applyAsync(float f, UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred resetAsync(UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        return CameraMetadataSafeGetterKt.getActiveArraySizeSafely(this.cameraProperties.getMetadata());
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getRequiredCharacteristics() {
            return NoOpZoomCompat.requiredCharacteristics;
        }
    }
}
