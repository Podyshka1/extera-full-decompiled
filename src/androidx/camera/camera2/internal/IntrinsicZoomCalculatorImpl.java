package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.util.Size;
import android.util.SizeF;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.core.util.Preconditions;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class IntrinsicZoomCalculatorImpl implements IntrinsicZoomCalculator {
    private final CameraDevices cameraDevices;

    public IntrinsicZoomCalculatorImpl(CameraDevices cameraDevices) {
        Intrinsics.checkNotNullParameter(cameraDevices, "cameraDevices");
        this.cameraDevices = cameraDevices;
    }

    @Override // androidx.camera.camera2.internal.IntrinsicZoomCalculator
    public Float calculateIntrinsicZoomRatio(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        try {
            return Float.valueOf(getDefaultCameraDefaultViewAngleDegrees(cameraMetadata) / getDefaultViewAngleDegrees(cameraMetadata));
        } catch (Exception e) {
            if (!Log.INSTANCE.getERROR_LOGGABLE()) {
                return null;
            }
            android.util.Log.e("CXCP", "Failed to get the intrinsic zoom ratio", e);
            return null;
        }
    }

    private final float getDefaultFocalLength(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key LENS_INFO_AVAILABLE_FOCAL_LENGTHS = CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS;
        Intrinsics.checkNotNullExpressionValue(LENS_INFO_AVAILABLE_FOCAL_LENGTHS, "LENS_INFO_AVAILABLE_FOCAL_LENGTHS");
        Object objCheckNotNull = Preconditions.checkNotNull(cameraMetadata.get(LENS_INFO_AVAILABLE_FOCAL_LENGTHS), "The focal lengths can not be empty.");
        Intrinsics.checkNotNullExpressionValue(objCheckNotNull, "checkNotNull(...)");
        float[] fArr = (float[]) objCheckNotNull;
        Preconditions.checkState(!(fArr.length == 0), "The focal lengths can not be empty.");
        return fArr[0];
    }

    private final float getSensorHorizontalLength(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key SENSOR_INFO_PHYSICAL_SIZE = CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_PHYSICAL_SIZE, "SENSOR_INFO_PHYSICAL_SIZE");
        Object objCheckNotNull = Preconditions.checkNotNull(cameraMetadata.get(SENSOR_INFO_PHYSICAL_SIZE), "The sensor size can't be null.");
        Intrinsics.checkNotNullExpressionValue(objCheckNotNull, "checkNotNull(...)");
        SizeF sizeFReverseSizeF = (SizeF) objCheckNotNull;
        CameraCharacteristics.Key SENSOR_INFO_ACTIVE_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_ACTIVE_ARRAY_SIZE, "SENSOR_INFO_ACTIVE_ARRAY_SIZE");
        Object objCheckNotNull2 = Preconditions.checkNotNull(cameraMetadata.get(SENSOR_INFO_ACTIVE_ARRAY_SIZE), "The sensor orientation can't be null.");
        Intrinsics.checkNotNullExpressionValue(objCheckNotNull2, "checkNotNull(...)");
        CameraCharacteristics.Key SENSOR_INFO_PIXEL_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_PIXEL_ARRAY_SIZE, "SENSOR_INFO_PIXEL_ARRAY_SIZE");
        Object objCheckNotNull3 = Preconditions.checkNotNull(cameraMetadata.get(SENSOR_INFO_PIXEL_ARRAY_SIZE), "The active array size can't be null.");
        Intrinsics.checkNotNullExpressionValue(objCheckNotNull3, "checkNotNull(...)");
        Size sizeReverseSize = (Size) objCheckNotNull3;
        CameraCharacteristics.Key SENSOR_ORIENTATION = CameraCharacteristics.SENSOR_ORIENTATION;
        Intrinsics.checkNotNullExpressionValue(SENSOR_ORIENTATION, "SENSOR_ORIENTATION");
        Object objCheckNotNull4 = Preconditions.checkNotNull(cameraMetadata.get(SENSOR_ORIENTATION), "The pixel array size can't be null.");
        Intrinsics.checkNotNullExpressionValue(objCheckNotNull4, "checkNotNull(...)");
        int iIntValue = ((Number) objCheckNotNull4).intValue();
        Size sizeRectToSize = TransformUtils.rectToSize((Rect) objCheckNotNull2);
        Intrinsics.checkNotNullExpressionValue(sizeRectToSize, "rectToSize(...)");
        if (TransformUtils.is90or270(iIntValue)) {
            sizeFReverseSizeF = TransformUtils.reverseSizeF(sizeFReverseSizeF);
            Intrinsics.checkNotNullExpressionValue(sizeFReverseSizeF, "reverseSizeF(...)");
            sizeRectToSize = TransformUtils.reverseSize(sizeRectToSize);
            Intrinsics.checkNotNullExpressionValue(sizeRectToSize, "reverseSize(...)");
            sizeReverseSize = TransformUtils.reverseSize(sizeReverseSize);
            Intrinsics.checkNotNullExpressionValue(sizeReverseSize, "reverseSize(...)");
        }
        return (sizeFReverseSizeF.getWidth() * sizeRectToSize.getWidth()) / sizeReverseSize.getWidth();
    }

    private final int focalLengthToViewAngleDegrees(float f, float f2) {
        Preconditions.checkArgument(f > 0.0f, "Focal length should be positive.");
        Preconditions.checkArgument(f2 > 0.0f, "Sensor length should be positive.");
        int degrees = (int) Math.toDegrees(((double) 2) * Math.atan(f2 / (2 * f)));
        Preconditions.checkArgumentInRange(degrees, 0, 360, "The provided focal length and sensor length result in an invalid view angle degrees.");
        return degrees;
    }

    private final int getDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata), getSensorHorizontalLength(cameraMetadata));
        } catch (Exception e) {
            throw new IllegalStateException("Failed to get a valid view angle", e);
        }
    }

    private final int getDefaultCameraDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            Object objCheckNotNull = Preconditions.checkNotNull(CameraDevices.CC.m1546awaitCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null), "Failed to get available camera IDs");
            Intrinsics.checkNotNullExpressionValue(objCheckNotNull, "checkNotNull(...)");
            Iterator it = ((List) objCheckNotNull).iterator();
            while (it.hasNext()) {
                String strM1608unboximpl = ((CameraId) it.next()).m1608unboximpl();
                Object objCheckNotNull2 = Preconditions.checkNotNull(CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(this.cameraDevices, strM1608unboximpl, null, 2, null), "Failed to get CameraMetadata for " + ((Object) CameraId.m1607toStringimpl(strM1608unboximpl)));
                Intrinsics.checkNotNullExpressionValue(objCheckNotNull2, "checkNotNull(...)");
                CameraMetadata cameraMetadata2 = (CameraMetadata) objCheckNotNull2;
                CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
                Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
                Object objCheckNotNull3 = Preconditions.checkNotNull(cameraMetadata2.get(LENS_FACING), "Failed to get CameraCharacteristics.LENS_FACING for " + ((Object) CameraId.m1607toStringimpl(strM1608unboximpl)));
                Intrinsics.checkNotNullExpressionValue(objCheckNotNull3, "checkNotNull(...)");
                int iIntValue = ((Number) objCheckNotNull3).intValue();
                Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
                Object objCheckNotNull4 = Preconditions.checkNotNull(cameraMetadata.get(LENS_FACING), "Failed to get the required LENS_FACING for " + ((Object) CameraId.m1607toStringimpl(cameraMetadata.mo1612getCameraDz_R5H8())));
                Intrinsics.checkNotNullExpressionValue(objCheckNotNull4, "checkNotNull(...)");
                if (iIntValue == ((Number) objCheckNotNull4).intValue()) {
                    return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata2), getSensorHorizontalLength(cameraMetadata2));
                }
            }
            throw new IllegalStateException("Could not find the default camera for " + ((Object) CameraId.m1607toStringimpl(cameraMetadata.mo1612getCameraDz_R5H8())));
        } catch (Exception e) {
            throw new IllegalStateException("Failed to get a valid view angle", e);
        }
    }
}
