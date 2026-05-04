package androidx.camera.camera2.adapter;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraModule;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.FeatureCombinationQueryImpl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.core.util.Preconditions;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraSurfaceAdapter implements CameraDeviceSurfaceManager {
    private final CameraAppComponent component;
    private final Context context;
    private final Object lock;
    private Map supportedSurfaceCombinationMap;

    public CameraSurfaceAdapter(Context context, Object obj, Set availableCameraIds) throws InitializationException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(availableCameraIds, "availableCameraIds");
        this.context = context;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.camera.camera2.config.CameraAppComponent");
        this.component = (CameraAppComponent) obj;
        this.lock = new Object();
        this.supportedSurfaceCombinationMap = MapsKt.emptyMap();
        try {
            onCamerasUpdated(CollectionsKt.toList(availableCameraIds));
        } catch (CameraUpdateException e) {
            throw new InitializationException(e);
        }
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public void onCamerasUpdated(List cameraIds) throws CameraUpdateException {
        List listMinus;
        Intrinsics.checkNotNullParameter(cameraIds, "cameraIds");
        synchronized (this.lock) {
            listMinus = CollectionsKt.minus(cameraIds, this.supportedSurfaceCombinationMap.keySet());
            Unit unit = Unit.INSTANCE;
        }
        if (!listMinus.isEmpty()) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Creating new surface combinations for: " + listMinus);
            }
        }
        Map mapBuildSurfaceCombinations = buildSurfaceCombinations(listMinus);
        synchronized (this.lock) {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = cameraIds.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (this.supportedSurfaceCombinationMap.containsKey(str)) {
                        Object obj = this.supportedSurfaceCombinationMap.get(str);
                        Intrinsics.checkNotNull(obj);
                        linkedHashMap.put(str, obj);
                    }
                }
                linkedHashMap.putAll(mapBuildSurfaceCombinations);
                this.supportedSurfaceCombinationMap = linkedHashMap;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Committed new surface combination map. Total cameras: " + linkedHashMap.size());
                }
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final Map buildSurfaceCombinations(List list) throws CameraUpdateException {
        FeatureCombinationQuery featureCombinationQueryImpl;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!list.isEmpty()) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    CameraMetadata cameraMetadataM1547awaitCameraMetadataFpsL5FU$default = CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(this.component.getCameraDevices(), CameraId.m1603constructorimpl(str), null, 2, null);
                    if (cameraMetadataM1547awaitCameraMetadataFpsL5FU$default != null) {
                        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
                        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
                        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadataM1547awaitCameraMetadataFpsL5FU$default.get(SCALER_STREAM_CONFIGURATION_MAP);
                        CameraQuirks cameraQuirks = new CameraQuirks(cameraMetadataM1547awaitCameraMetadataFpsL5FU$default, new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(cameraMetadataM1547awaitCameraMetadataFpsL5FU$default, streamConfigurationMap)));
                        Context context = this.context;
                        EncoderProfilesProvider encoderProfilesProviderProvideEncoderProfilesProvider = CameraModule.Companion.provideEncoderProfilesProvider(str, cameraQuirks);
                        if (Build.VERSION.SDK_INT >= 35) {
                            featureCombinationQueryImpl = new FeatureCombinationQueryImpl(cameraMetadataM1547awaitCameraMetadataFpsL5FU$default, this.component.getCameraPipe(), cameraQuirks);
                        } else {
                            featureCombinationQueryImpl = FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY;
                        }
                        linkedHashMap.put(str, new SupportedSurfaceCombination(context, cameraMetadataM1547awaitCameraMetadataFpsL5FU$default, encoderProfilesProviderProvideEncoderProfilesProvider, featureCombinationQueryImpl));
                    }
                }
            } catch (DoNotDisturbException e) {
                throw new CameraUpdateException("Failed to query camera metadata", e);
            } catch (Exception e2) {
                throw new CameraUpdateException("Failed to build surface combinations", e2);
            }
        }
        return linkedHashMap;
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public SurfaceConfig transformSurfaceConfig(int i, String cameraId, int i2, Size size, StreamUseCase streamUseCase) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(streamUseCase, "streamUseCase");
        Preconditions.checkArgument(checkIfSupportedCombinationExist$camera_camera2(cameraId), "No such camera id in supported combination list: " + cameraId);
        synchronized (this.lock) {
            supportedSurfaceCombination = (SupportedSurfaceCombination) this.supportedSurfaceCombinationMap.get(cameraId);
        }
        if (supportedSurfaceCombination == null) {
            throw new IllegalArgumentException("No such camera id in supported combination list: " + cameraId);
        }
        return supportedSurfaceCombination.transformSurfaceConfig(i, i2, size, streamUseCase);
    }

    public final boolean checkIfSupportedCombinationExist$camera_camera2(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        return this.supportedSurfaceCombinationMap.containsKey(cameraId);
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public SurfaceStreamSpecQueryResult getSuggestedStreamSpecs(int i, String cameraId, List existingSurfaces, Map newUseCaseConfigsSupportedSizeMap, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(existingSurfaces, "existingSurfaces");
        Intrinsics.checkNotNullParameter(newUseCaseConfigsSupportedSizeMap, "newUseCaseConfigsSupportedSizeMap");
        Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
        Preconditions.checkArgument(checkIfSupportedCombinationExist$camera_camera2(cameraId), "No such camera id in supported combination list: " + cameraId);
        synchronized (this.lock) {
            supportedSurfaceCombination = (SupportedSurfaceCombination) this.supportedSurfaceCombinationMap.get(cameraId);
        }
        if (supportedSurfaceCombination == null) {
            throw new IllegalArgumentException("No such camera id in supported combination list: " + cameraId);
        }
        return supportedSurfaceCombination.getSuggestedStreamSpecifications(i, existingSurfaces, newUseCaseConfigsSupportedSizeMap, videoStabilization, z, z2, z3);
    }
}
