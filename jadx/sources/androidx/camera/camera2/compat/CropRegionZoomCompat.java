package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class CropRegionZoomCompat implements ZoomCompat {
    private final CameraProperties cameraProperties;
    private Rect currentCropRect;
    private final Rect sensorRect;

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        return 1.0f;
    }

    public CropRegionZoomCompat(CameraProperties cameraProperties) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        this.cameraProperties = cameraProperties;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_INFO_ACTIVE_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_ACTIVE_ARRAY_SIZE, "SENSOR_INFO_ACTIVE_ARRAY_SIZE");
        Object obj = metadata.get(SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Intrinsics.checkNotNull(obj);
        this.sensorRect = (Rect) obj;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SCALER_AVAILABLE_MAX_DIGITAL_ZOOM = CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM;
        Intrinsics.checkNotNullExpressionValue(SCALER_AVAILABLE_MAX_DIGITAL_ZOOM, "SCALER_AVAILABLE_MAX_DIGITAL_ZOOM");
        Float f = (Float) metadata.getOrDefault(SCALER_AVAILABLE_MAX_DIGITAL_ZOOM, Float.valueOf(getMinZoomRatio()));
        ZoomMath zoomMath = ZoomMath.INSTANCE;
        Intrinsics.checkNotNull(f);
        if (zoomMath.nearZero$camera_camera2(f.floatValue())) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled("CXCP")) {
                return 1.0f;
            }
            Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid max zoom ratio of " + f + " detected, defaulting to 1.0f");
            return 1.0f;
        }
        return f.floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred applyAsync(float f, UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        Rect rectComputeCropRect = computeCropRect(this.sensorRect, f);
        this.currentCropRect = rectComputeCropRect;
        CaptureRequest.Key key = CaptureRequest.SCALER_CROP_REGION;
        Intrinsics.checkNotNull(rectComputeCropRect, "null cannot be cast to non-null type kotlin.Any");
        return UseCaseCameraRequestControl.CC.setParametersAsync$default(requestControl, MapsKt.mapOf(TuplesKt.m1081to(key, rectComputeCropRect)), null, null, 6, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred resetAsync(UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        return UseCaseCameraRequestControl.CC.removeParametersAsync$default(requestControl, CollectionsKt.listOf(CaptureRequest.SCALER_CROP_REGION), null, 2, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        Rect rect = this.currentCropRect;
        return rect == null ? this.sensorRect : rect;
    }

    private final Rect computeCropRect(Rect rect, float f) {
        if (ZoomMath.INSTANCE.nearZero$camera_camera2(f)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "ZoomCompat: Invalid zoom ratio of 0.0f passed in, defaulting to 1.0f");
            }
            f = 1.0f;
        }
        float fWidth = rect.width() / f;
        float fHeight = rect.height() / f;
        float fWidth2 = (rect.width() - fWidth) / 2.0f;
        float fHeight2 = (rect.height() - fHeight) / 2.0f;
        return new Rect((int) fWidth2, (int) fHeight2, (int) (fWidth2 + fWidth), (int) (fHeight2 + fHeight));
    }
}
