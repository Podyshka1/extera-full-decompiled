package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidRZoomCompat implements ZoomCompat {
    private final CameraProperties cameraProperties;
    private final Range range;

    public AndroidRZoomCompat(CameraProperties cameraProperties, Range range) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(range, "range");
        this.cameraProperties = cameraProperties;
        this.range = range;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        Object lower = this.range.getLower();
        Intrinsics.checkNotNullExpressionValue(lower, "getLower(...)");
        return ((Number) lower).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        Object upper = this.range.getUpper();
        Intrinsics.checkNotNullExpressionValue(upper, "getUpper(...)");
        return ((Number) upper).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred applyAsync(float f, UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        float minZoomRatio = getMinZoomRatio();
        if (f > getMaxZoomRatio() || minZoomRatio > f) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m1081to(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(f)));
        if (Build.VERSION.SDK_INT >= 34 && CameraMetadata.Companion.getSupportsZoomOverride(this.cameraProperties.getMetadata())) {
            Api34Compat.setSettingsOverrideZoom(mapMutableMapOf);
        }
        return UseCaseCameraRequestControl.CC.setParametersAsync$default(requestControl, mapMutableMapOf, null, null, 6, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred resetAsync(UseCaseCameraRequestControl requestControl) {
        Intrinsics.checkNotNullParameter(requestControl, "requestControl");
        CaptureRequest.Key CONTROL_ZOOM_RATIO = CaptureRequest.CONTROL_ZOOM_RATIO;
        Intrinsics.checkNotNullExpressionValue(CONTROL_ZOOM_RATIO, "CONTROL_ZOOM_RATIO");
        List listMutableListOf = CollectionsKt.mutableListOf(CONTROL_ZOOM_RATIO);
        if (Build.VERSION.SDK_INT >= 34) {
            CaptureRequest.Key CONTROL_SETTINGS_OVERRIDE = CaptureRequest.CONTROL_SETTINGS_OVERRIDE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_SETTINGS_OVERRIDE, "CONTROL_SETTINGS_OVERRIDE");
            listMutableListOf.add(CONTROL_SETTINGS_OVERRIDE);
        }
        return UseCaseCameraRequestControl.CC.removeParametersAsync$default(requestControl, listMutableListOf, null, 2, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key SENSOR_INFO_ACTIVE_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_ACTIVE_ARRAY_SIZE, "SENSOR_INFO_ACTIVE_ARRAY_SIZE");
        Object obj = metadata.get(SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Intrinsics.checkNotNull(obj);
        return (Rect) obj;
    }
}
