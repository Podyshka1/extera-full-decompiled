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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraSelectionOptimizer {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getSelectedAvailableCameraIds(CameraAppComponent cameraAppComponent, CameraSelector cameraSelector, List cameraIdList, StreamSpecsCalculator streamSpecsCalculator) throws InitializationException {
            String strDecideSkippedCameraIdByHeuristic;
            Intrinsics.checkNotNullParameter(cameraAppComponent, "cameraAppComponent");
            Intrinsics.checkNotNullParameter(cameraIdList, "cameraIdList");
            Intrinsics.checkNotNullParameter(streamSpecsCalculator, "streamSpecsCalculator");
            try {
                ArrayList arrayList = new ArrayList();
                CameraDevices cameraDevices = cameraAppComponent.getCameraDevices();
                if (cameraSelector == null) {
                    return cameraIdList;
                }
                try {
                    strDecideSkippedCameraIdByHeuristic = decideSkippedCameraIdByHeuristic(cameraDevices, cameraSelector.getLensFacing());
                } catch (IllegalStateException e) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to get Metadata for cameraID 0 and/or 1", e);
                    }
                    strDecideSkippedCameraIdByHeuristic = null;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = cameraIdList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!Intrinsics.areEqual(str, strDecideSkippedCameraIdByHeuristic)) {
                        CameraInfoInternal cameraInfoInternal = cameraAppComponent.cameraBuilder().config(new CameraConfig(CameraId.m1603constructorimpl(str), null)).streamSpecsCalculator(streamSpecsCalculator).build().getCameraInternal().getCameraInfoInternal();
                        Intrinsics.checkNotNullExpressionValue(cameraInfoInternal, "getCameraInfoInternal(...)");
                        arrayList2.add(cameraInfoInternal);
                    }
                }
                List<CameraInfo> listFilter = cameraSelector.filter(arrayList2);
                Intrinsics.checkNotNullExpressionValue(listFilter, "filter(...)");
                for (CameraInfo cameraInfo : listFilter) {
                    Intrinsics.checkNotNull(cameraInfo, "null cannot be cast to non-null type androidx.camera.core.impl.CameraInfoInternal");
                    String cameraId = ((CameraInfoInternal) cameraInfo).getCameraId();
                    Intrinsics.checkNotNullExpressionValue(cameraId, "getCameraId(...)");
                    arrayList.add(cameraId);
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

        private final String decideSkippedCameraIdByHeuristic(CameraDevices cameraDevices, Integer num) {
            if (num == null) {
                return null;
            }
            try {
                if (num.intValue() == 1) {
                    CameraMetadata cameraMetadataM1547awaitCameraMetadataFpsL5FU$default = CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1603constructorimpl(MVEL.VERSION_SUB), null, 2, null);
                    if (cameraMetadataM1547awaitCameraMetadataFpsL5FU$default == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
                    Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
                    Integer num2 = (Integer) cameraMetadataM1547awaitCameraMetadataFpsL5FU$default.get(LENS_FACING);
                    if (num2 != null && num2.intValue() == 1) {
                        return "1";
                    }
                } else if (num.intValue() == 0) {
                    CameraMetadata cameraMetadataM1547awaitCameraMetadataFpsL5FU$default2 = CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m1603constructorimpl("1"), null, 2, null);
                    if (cameraMetadataM1547awaitCameraMetadataFpsL5FU$default2 == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    CameraCharacteristics.Key LENS_FACING2 = CameraCharacteristics.LENS_FACING;
                    Intrinsics.checkNotNullExpressionValue(LENS_FACING2, "LENS_FACING");
                    Integer num3 = (Integer) cameraMetadataM1547awaitCameraMetadataFpsL5FU$default2.get(LENS_FACING2);
                    if (num3 != null && num3.intValue() == 0) {
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
