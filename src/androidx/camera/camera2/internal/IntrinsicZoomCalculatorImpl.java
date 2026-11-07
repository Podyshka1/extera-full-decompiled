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
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\nJ\f\u0010\u000b\u001a\u00020\u0007*\u00020\tH\u0002J\f\u0010\f\u001a\u00020\u0007*\u00020\tH\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0003J\f\u0010\u0011\u001a\u00020\u000e*\u00020\tH\u0002J\f\u0010\u0012\u001a\u00020\u000e*\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;", "Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;", "cameraDevices", "Landroidx/camera/camera2/pipe/CameraDevices;", "<init>", "(Landroidx/camera/camera2/pipe/CameraDevices;)V", "calculateIntrinsicZoomRatio", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Ljava/lang/Float;", "getDefaultFocalLength", "getSensorHorizontalLength", "focalLengthToViewAngleDegrees", _UrlKt.FRAGMENT_ENCODE_SET, "focalLength", "sensorLength", "getDefaultViewAngleDegrees", "getDefaultCameraDefaultViewAngleDegrees", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIntrinsicZoomCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicZoomCalculator.kt\nandroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n86#2,2:257\n1869#3,2:259\n*S KotlinDebug\n*F\n+ 1 IntrinsicZoomCalculator.kt\nandroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl\n*L\n84#1:257,2\n226#1:259,2\n*E\n"})
public final class IntrinsicZoomCalculatorImpl implements IntrinsicZoomCalculator {
    private final CameraDevices cameraDevices;

    public IntrinsicZoomCalculatorImpl(CameraDevices cameraDevices) {
        this.cameraDevices = cameraDevices;
    }

    @Override // androidx.camera.camera2.internal.IntrinsicZoomCalculator
    public Float calculateIntrinsicZoomRatio(CameraMetadata cameraMetadata) {
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
        float[] fArr = (float[]) Preconditions.checkNotNull(cameraMetadata.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS), "The focal lengths can not be empty.");
        Preconditions.checkState(!(fArr.length == 0), "The focal lengths can not be empty.");
        return fArr[0];
    }

    private final float getSensorHorizontalLength(CameraMetadata cameraMetadata) {
        SizeF sizeFReverseSizeF = (SizeF) Preconditions.checkNotNull(cameraMetadata.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE), "The sensor size can't be null.");
        Rect rect = (Rect) Preconditions.checkNotNull(cameraMetadata.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE), "The sensor orientation can't be null.");
        Size sizeReverseSize = (Size) Preconditions.checkNotNull(cameraMetadata.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE), "The active array size can't be null.");
        int iIntValue = ((Number) Preconditions.checkNotNull(cameraMetadata.get(CameraCharacteristics.SENSOR_ORIENTATION), "The pixel array size can't be null.")).intValue();
        Size sizeRectToSize = TransformUtils.rectToSize(rect);
        if (TransformUtils.is90or270(iIntValue)) {
            sizeFReverseSizeF = TransformUtils.reverseSizeF(sizeFReverseSizeF);
            sizeRectToSize = TransformUtils.reverseSize(sizeRectToSize);
            sizeReverseSize = TransformUtils.reverseSize(sizeReverseSize);
        }
        return (sizeFReverseSizeF.getWidth() * sizeRectToSize.getWidth()) / sizeReverseSize.getWidth();
    }

    private final int focalLengthToViewAngleDegrees(float focalLength, float sensorLength) {
        Preconditions.checkArgument(focalLength > 0.0f, "Focal length should be positive.");
        Preconditions.checkArgument(sensorLength > 0.0f, "Sensor length should be positive.");
        int degrees = (int) Math.toDegrees(2.0d * Math.atan(sensorLength / (2.0f * focalLength)));
        Preconditions.checkArgumentInRange(degrees, 0, 360, "The provided focal length and sensor length result in an invalid view angle degrees.");
        return degrees;
    }

    private final int getDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata), getSensorHorizontalLength(cameraMetadata));
        } catch (Exception e) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to get a valid view angle", e);
            return 0;
        }
    }

    private final int getDefaultCameraDefaultViewAngleDegrees(CameraMetadata cameraMetadata) {
        try {
            Iterator it = ((List) Preconditions.checkNotNull(CameraDevices.m1291awaitCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null), "Failed to get available camera IDs")).iterator();
            while (it.hasNext()) {
                String value = ((CameraId) it.next()).getValue();
                CameraMetadata cameraMetadata2 = (CameraMetadata) Preconditions.checkNotNull(CameraDevices.m1292awaitCameraMetadataFpsL5FU$default(this.cameraDevices, value, null, 2, null), "Failed to get CameraMetadata for " + ((Object) CameraId.m1356toStringimpl(value)));
                CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                if (((Number) Preconditions.checkNotNull(cameraMetadata2.get((CameraCharacteristics.Key<Object>) key), "Failed to get CameraCharacteristics.LENS_FACING for " + ((Object) CameraId.m1356toStringimpl(value)))).intValue() == ((Number) Preconditions.checkNotNull(cameraMetadata.get((CameraCharacteristics.Key<Object>) key), "Failed to get the required LENS_FACING for " + ((Object) CameraId.m1356toStringimpl(cameraMetadata.mo1361getCameraDz_R5H8())))).intValue()) {
                    return focalLengthToViewAngleDegrees(getDefaultFocalLength(cameraMetadata2), getSensorHorizontalLength(cameraMetadata2));
                }
            }
            throw new IllegalStateException("Could not find the default camera for " + ((Object) CameraId.m1356toStringimpl(cameraMetadata.mo1361getCameraDz_R5H8())));
        } catch (Exception e) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to get a valid view angle", e);
            return 0;
        }
    }
}
