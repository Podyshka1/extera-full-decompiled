package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.lifecycle.LiveData;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class PhysicalCameraInfoAdapter implements CameraInfo, UnsafeWrapper {
    private final Lazy camera2CameraInfo$delegate;
    private final CameraProperties cameraProperties;

    public PhysicalCameraInfoAdapter(CameraProperties cameraProperties) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        this.cameraProperties = cameraProperties;
        this.camera2CameraInfo$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PhysicalCameraInfoAdapter.camera2CameraInfo_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final Camera2CameraInfo getCamera2CameraInfo$camera_camera2() {
        return (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Camera2CameraInfo camera2CameraInfo_delegate$lambda$0(PhysicalCameraInfoAdapter physicalCameraInfoAdapter) {
        return Camera2CameraInfo.Companion.create(physicalCameraInfoAdapter.cameraProperties);
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees(int i) {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_ORIENTATION = CameraCharacteristics.SENSOR_ORIENTATION;
        Intrinsics.checkNotNullExpressionValue(SENSOR_ORIENTATION, "SENSOR_ORIENTATION");
        Object obj = metadata.get(SENSOR_ORIENTATION);
        Intrinsics.checkNotNull(obj);
        return CameraOrientationUtil.getRelativeImageRotation(CameraOrientationUtil.surfaceRotationToDegrees(i), ((Number) obj).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData getZoomState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public int getLensFacing() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
        Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
        Object obj = metadata.get(LENS_FACING);
        Intrinsics.checkNotNull(obj);
        return getCameraSelectorLensFacing(((Number) obj).intValue());
    }

    @Override // androidx.camera.core.CameraInfo
    public CameraIdentifier getCameraIdentifier() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class))) {
            Camera2CameraInfo camera2CameraInfo$camera_camera2 = getCamera2CameraInfo$camera_camera2();
            Intrinsics.checkNotNull(camera2CameraInfo$camera_camera2, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter.unwrapAs");
            return camera2CameraInfo$camera_camera2;
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraProperties.class))) {
            CameraProperties cameraProperties = this.cameraProperties;
            Intrinsics.checkNotNull(cameraProperties, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter.unwrapAs");
            return cameraProperties;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(android.hardware.camera2.CameraMetadata.class))) {
            return this.cameraProperties.getMetadata().unwrapAs(type);
        }
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        Intrinsics.checkNotNull(metadata, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter.unwrapAs");
        return metadata;
    }

    private final int getCameraSelectorLensFacing(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        throw new IllegalArgumentException("The specified lens facing integer " + i + " can not be recognized.");
    }
}
