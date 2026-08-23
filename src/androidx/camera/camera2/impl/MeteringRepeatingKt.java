package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.SupportedRepeatingSurfaceSizeKt;
import androidx.camera.core.Logger;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b*\u00020\u0004H\u0002¢\u0006\u0002\u0010\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"DEFAULT_PREVIEW_SIZE", "Landroid/util/Size;", "getProperPreviewSize", "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "displayInfoManager", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "getOutputSizes", _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/camera/camera2/impl/CameraProperties;)[Landroid/util/Size;", "camera-camera2"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMeteringRepeating.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeteringRepeating.kt\nandroidx/camera/camera2/impl/MeteringRepeatingKt\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,263:1\n119#2,4:264\n136#2,4:270\n6181#3,2:268\n*S KotlinDebug\n*F\n+ 1 MeteringRepeating.kt\nandroidx/camera/camera2/impl/MeteringRepeatingKt\n*L\n226#1:264,4\n257#1:270,4\n229#1:268,2\n*E\n"})
public abstract class MeteringRepeatingKt {
    private static final Size DEFAULT_PREVIEW_SIZE = new Size(640, 480);

    public static final Size getProperPreviewSize(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
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
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    Size size = (Size) t;
                    Size size2 = (Size) t2;
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
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraProperties.getMetadata().get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
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
