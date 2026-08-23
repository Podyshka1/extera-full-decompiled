package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.SupportedRepeatingSurfaceSizeKt;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import java.util.Comparator;
import kotlin.collections.ArraysKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MeteringRepeatingKt {
    private static final Size DEFAULT_PREVIEW_SIZE = new Size(640, 480);

    public static final Size getProperPreviewSize(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(displayInfoManager, "displayInfoManager");
        Size[] outputSizes = getOutputSizes(cameraProperties);
        if (outputSizes == null) {
            return DEFAULT_PREVIEW_SIZE;
        }
        if (outputSizes.length == 0) {
            return DEFAULT_PREVIEW_SIZE;
        }
        Size[] supportedRepeatingSurfaceSizes = SupportedRepeatingSurfaceSizeKt.getSupportedRepeatingSurfaceSizes(outputSizes);
        if (supportedRepeatingSurfaceSizes.length == 0) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "No supported output size list, fallback to current list");
            }
        } else {
            outputSizes = supportedRepeatingSurfaceSizes;
        }
        if (outputSizes.length > 1) {
            ArraysKt.sortWith(outputSizes, new Comparator() { // from class: androidx.camera.camera2.impl.MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Size size = (Size) obj;
                    Size size2 = (Size) obj2;
                    return ComparisonsKt.compareValues(Long.valueOf(((long) size.getWidth()) * ((long) size.getHeight())), Long.valueOf(((long) size2.getWidth()) * ((long) size2.getHeight())));
                }
            });
        }
        Size previewSize = displayInfoManager.getPreviewSize();
        long jMin = Math.min(307200L, ((long) previewSize.getWidth()) * ((long) previewSize.getHeight()));
        int length = outputSizes.length;
        Size size = null;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Size size2 = outputSizes[i];
            long width = ((long) size2.getWidth()) * ((long) size2.getHeight());
            if (width == jMin) {
                return size2;
            }
            if (width <= jMin) {
                i++;
                size = size2;
            } else if (size != null) {
                return size;
            }
        }
        return size == null ? outputSizes[0] : size;
    }

    private static final Size[] getOutputSizes(CameraProperties cameraProperties) {
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) metadata.get(SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isErrorEnabled("CXCP")) {
                return null;
            }
            Log.e(Camera2Logger.TRUNCATED_TAG, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP.");
            return null;
        }
        return streamConfigurationMap.getOutputSizes(34);
    }
}
