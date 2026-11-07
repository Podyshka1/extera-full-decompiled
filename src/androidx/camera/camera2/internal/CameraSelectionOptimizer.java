package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Log;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.StreamSpecsCalculator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/internal/CameraSelectionOptimizer;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CameraSelectionOptimizer {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ;\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/CameraDevices;", "cameraDevices", _UrlKt.FRAGMENT_ENCODE_SET, "lensFacingInteger", _UrlKt.FRAGMENT_ENCODE_SET, "decideSkippedCameraIdByHeuristic", "(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/Integer;)Ljava/lang/String;", "Landroidx/camera/camera2/config/CameraAppComponent;", "cameraAppComponent", "Landroidx/camera/core/CameraSelector;", "availableCamerasSelector", _UrlKt.FRAGMENT_ENCODE_SET, "cameraIdList", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "streamSpecsCalculator", "getSelectedAvailableCameraIds", "(Landroidx/camera/camera2/config/CameraAppComponent;Landroidx/camera/core/CameraSelector;Ljava/util/List;Landroidx/camera/core/internal/StreamSpecsCalculator;)Ljava/util/List;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraSelectionOptimizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraSelectionOptimizer.kt\nandroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,155:1\n1563#2:156\n1634#2,3:157\n95#3,4:160\n146#3,4:164\n136#3,4:168\n*S KotlinDebug\n*F\n+ 1 CameraSelectionOptimizer.kt\nandroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion\n*L\n45#1:156\n45#1:157,3\n77#1:160,4\n105#1:164,4\n146#1:168,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getSelectedAvailableCameraIds(CameraAppComponent cameraAppComponent, CameraSelector availableCamerasSelector, List<String> cameraIdList, StreamSpecsCalculator streamSpecsCalculator) {
            String strDecideSkippedCameraIdByHeuristic;
            try {
                ArrayList arrayList = new ArrayList();
                CameraDevices cameraDevices = cameraAppComponent.getCameraDevices();
                if (availableCamerasSelector == null) {
                    return cameraIdList;
                }
                try {
                    strDecideSkippedCameraIdByHeuristic = decideSkippedCameraIdByHeuristic(cameraDevices, availableCamerasSelector.getLensFacing());
                } catch (IllegalStateException e) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to get Metadata for cameraID 0 and/or 1", e);
                    }
                    strDecideSkippedCameraIdByHeuristic = null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : cameraIdList) {
                    if (!Intrinsics.areEqual(str, strDecideSkippedCameraIdByHeuristic)) {
                        arrayList2.add(cameraAppComponent.cameraBuilder().config(new CameraConfig(CameraId.m1352constructorimpl(str), null)).streamSpecsCalculator(streamSpecsCalculator).build().getCameraInternal().getCameraInfoInternal());
                    }
                }
                Iterator<CameraInfo> it = availableCamerasSelector.filter(arrayList2).iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraInfoInternal) it.next()).getCameraId());
                }
                return arrayList;
            } catch (IllegalStateException e2) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Error while accessing info about cameras.", e2);
                }
                throw new InitializationException(e2);
            }
        }

        private final String decideSkippedCameraIdByHeuristic(CameraDevices cameraDevices, Integer lensFacingInteger) {
            if (lensFacingInteger == null) {
                return null;
            }
            try {
                if (lensFacingInteger.intValue() == 1) {
                    CameraMetadata cameraMetadataM1292awaitCameraMetadataFpsL5FU$default = CameraDevices.m1292awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1352constructorimpl(MVEL.VERSION_SUB), null, 2, null);
                    if (cameraMetadataM1292awaitCameraMetadataFpsL5FU$default == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    Integer num = (Integer) cameraMetadataM1292awaitCameraMetadataFpsL5FU$default.get(CameraCharacteristics.LENS_FACING);
                    if (num != null && num.intValue() == 1) {
                        return "1";
                    }
                } else if (lensFacingInteger.intValue() == 0) {
                    CameraMetadata cameraMetadataM1292awaitCameraMetadataFpsL5FU$default2 = CameraDevices.m1292awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1352constructorimpl("1"), null, 2, null);
                    if (cameraMetadataM1292awaitCameraMetadataFpsL5FU$default2 == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    Integer num2 = (Integer) cameraMetadataM1292awaitCameraMetadataFpsL5FU$default2.get(CameraCharacteristics.LENS_FACING);
                    if (num2 != null && num2.intValue() == 0) {
                        return MVEL.VERSION_SUB;
                    }
                }
            } catch (DoNotDisturbException unused) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Received Do Not Disturb exception while deciding camera id to skip. Please turn off Do Not Disturb mode");
                }
            }
            return null;
        }
    }
}
