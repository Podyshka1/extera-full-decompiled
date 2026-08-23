package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualOutConfig;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class VirtualCameraAdapter implements UseCase.StateChangeCallback {
    final Set mChildren;
    private final Set mChildrenConfigs;
    private final Map mChildrenConfigsMap;
    private final CameraInternal mParentCamera;
    private final ResolutionsMerger mResolutionsMerger;
    private final CameraInternal mSecondaryParentCamera;
    private ResolutionsMerger mSecondaryResolutionsMerger;
    private final UseCaseConfigFactory mUseCaseConfigFactory;
    final Map mChildrenEdges = new HashMap();
    private final Map mChildrenVirtualCameras = new HashMap();
    final Map mChildrenActiveState = new HashMap();
    private final CameraCaptureCallback mParentMetadataCallback = createCameraCaptureCallback();

    VirtualCameraAdapter(CameraInternal cameraInternal, CameraInternal cameraInternal2, Set set, UseCaseConfigFactory useCaseConfigFactory, StreamSharing.Control control) {
        this.mParentCamera = cameraInternal;
        this.mSecondaryParentCamera = cameraInternal2;
        this.mUseCaseConfigFactory = useCaseConfigFactory;
        this.mChildren = set;
        Map childrenConfigsMap = toChildrenConfigsMap(cameraInternal, set, useCaseConfigFactory);
        this.mChildrenConfigsMap = childrenConfigsMap;
        HashSet hashSet = new HashSet(childrenConfigsMap.values());
        this.mChildrenConfigs = hashSet;
        this.mResolutionsMerger = new ResolutionsMerger(cameraInternal, hashSet);
        if (cameraInternal2 != null) {
            this.mSecondaryResolutionsMerger = new ResolutionsMerger(cameraInternal2, hashSet);
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            this.mChildrenActiveState.put(useCase, Boolean.FALSE);
            this.mChildrenVirtualCameras.put(useCase, new VirtualCamera(cameraInternal, this, control));
        }
    }

    void mergeChildrenConfigs(MutableConfig mutableConfig) {
        mutableConfig.insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, this.mResolutionsMerger.getMergedResolutions(mutableConfig));
        mutableConfig.insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(getHighestSurfacePriority(this.mChildrenConfigs)));
        DynamicRange dynamicRangeResolveDynamicRange = DynamicRangeUtils.resolveDynamicRange(this.mChildrenConfigs);
        if (dynamicRangeResolveDynamicRange == null) {
            throw new IllegalArgumentException("Failed to merge child dynamic ranges, can not find a dynamic range that satisfies all children.");
        }
        mutableConfig.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRangeResolveDynamicRange);
        mutableConfig.insertOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, resolveTargetFrameRate(this.mChildrenConfigs));
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            UseCaseConfig useCaseConfig = (UseCaseConfig) this.mChildrenConfigsMap.get((UseCase) it.next());
            Objects.requireNonNull(useCaseConfig);
            UseCaseConfig useCaseConfig2 = useCaseConfig;
            if (useCaseConfig2.getVideoStabilizationMode() != 0) {
                mutableConfig.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, Integer.valueOf(useCaseConfig2.getVideoStabilizationMode()));
            }
            if (useCaseConfig2.getPreviewStabilizationMode() != 0) {
                mutableConfig.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(useCaseConfig2.getPreviewStabilizationMode()));
            }
        }
    }

    void bindChildren() {
        for (UseCase useCase : this.mChildren) {
            VirtualCamera virtualCamera = (VirtualCamera) this.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.bindToCamera(virtualCamera, null, null, useCase.getDefaultConfig(true, this.mUseCaseConfigFactory));
        }
    }

    void unbindChildren() {
        for (UseCase useCase : this.mChildren) {
            VirtualCamera virtualCamera = (VirtualCamera) this.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.unbindFromCamera(virtualCamera);
        }
    }

    void notifySessionStart() {
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onSessionStart();
        }
    }

    void notifySessionStop() {
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onSessionStop();
        }
    }

    void notifyCameraControlReady() {
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onCameraControlReady();
        }
    }

    Set getChildren() {
        return this.mChildren;
    }

    Map getChildrenOutConfigs(SurfaceEdge surfaceEdge, int i, boolean z, boolean z2) {
        HashMap map = new HashMap();
        for (UseCase useCase : this.mChildren) {
            SurfaceEdge surfaceEdge2 = surfaceEdge;
            OutConfig outConfigCalculateOutConfig = calculateOutConfig(useCase, this.mResolutionsMerger, this.mParentCamera, surfaceEdge2, i, z, z2);
            updateVirtualCameraRotationDegrees(useCase);
            map.put(useCase, outConfigCalculateOutConfig);
            surfaceEdge = surfaceEdge2;
        }
        return map;
    }

    private void updateVirtualCameraRotationDegrees(UseCase useCase) {
        int childRotationDegrees = getChildRotationDegrees(useCase, this.mParentCamera);
        VirtualCamera virtualCamera = (VirtualCamera) this.mChildrenVirtualCameras.get(useCase);
        Objects.requireNonNull(virtualCamera);
        virtualCamera.setRotationDegrees(childRotationDegrees);
    }

    Map getSelectedChildSizes(SurfaceEdge surfaceEdge, boolean z) {
        HashMap map = new HashMap();
        for (UseCase useCase : this.mChildren) {
            ResolutionsMerger resolutionsMerger = this.mResolutionsMerger;
            UseCaseConfig useCaseConfig = (UseCaseConfig) this.mChildrenConfigsMap.get(useCase);
            Objects.requireNonNull(useCaseConfig);
            PreferredChildSize preferredChildSize = resolutionsMerger.getPreferredChildSize(useCaseConfig, surfaceEdge.getCropRect(), TransformUtils.getRotationDegrees(surfaceEdge.getSensorToBufferTransform()), z);
            map.put(useCase, preferredChildSize.getOriginalSelectedChildSize());
            Logger.m76d("VirtualCameraAdapter", "Selected child size: " + preferredChildSize.getOriginalSelectedChildSize() + ", useCase: " + useCase);
        }
        return map;
    }

    Map getChildrenOutConfigs(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, int i, boolean z) {
        HashMap map = new HashMap();
        for (UseCase useCase : this.mChildren) {
            SurfaceEdge surfaceEdge3 = surfaceEdge;
            int i2 = i;
            boolean z2 = z;
            OutConfig outConfigCalculateOutConfig = calculateOutConfig(useCase, this.mResolutionsMerger, this.mParentCamera, surfaceEdge3, i2, z2, false);
            ResolutionsMerger resolutionsMerger = this.mSecondaryResolutionsMerger;
            Objects.requireNonNull(resolutionsMerger);
            CameraInternal cameraInternal = this.mSecondaryParentCamera;
            Objects.requireNonNull(cameraInternal);
            SurfaceEdge surfaceEdge4 = surfaceEdge2;
            OutConfig outConfigCalculateOutConfig2 = calculateOutConfig(useCase, resolutionsMerger, cameraInternal, surfaceEdge4, i2, z2, false);
            updateVirtualCameraRotationDegrees(useCase);
            map.put(useCase, DualOutConfig.m99of(outConfigCalculateOutConfig, outConfigCalculateOutConfig2));
            surfaceEdge = surfaceEdge3;
            surfaceEdge2 = surfaceEdge4;
            i = i2;
            z = z2;
        }
        return map;
    }

    private OutConfig calculateOutConfig(UseCase useCase, ResolutionsMerger resolutionsMerger, CameraInternal cameraInternal, SurfaceEdge surfaceEdge, int i, boolean z, boolean z2) {
        int sensorRotationDegrees = cameraInternal.getCameraInfo().getSensorRotationDegrees(i);
        boolean zIsMirrored = TransformUtils.isMirrored(surfaceEdge.getSensorToBufferTransform());
        UseCaseConfig useCaseConfig = (UseCaseConfig) this.mChildrenConfigsMap.get(useCase);
        Objects.requireNonNull(useCaseConfig);
        PreferredChildSize preferredChildSize = resolutionsMerger.getPreferredChildSize(useCaseConfig, surfaceEdge.getCropRect(), TransformUtils.getRotationDegrees(surfaceEdge.getSensorToBufferTransform()), z);
        Rect cropRectBeforeScaling = preferredChildSize.getCropRectBeforeScaling();
        Size childSizeToScale = preferredChildSize.getChildSizeToScale();
        int iWithin360 = TransformUtils.within360((surfaceEdge.getRotationDegrees() + getChildRotationDegrees(useCase, cameraInternal)) - sensorRotationDegrees);
        return OutConfig.m101of(getChildTargetType(useCase), getChildFormat(useCase), cropRectBeforeScaling, TransformUtils.rotateSize(childSizeToScale, iWithin360), iWithin360, z2 ? false : useCase.isMirroringRequired(cameraInternal) ^ zIsMirrored);
    }

    void setChildrenEdges(Map map, Map map2) {
        this.mChildrenEdges.clear();
        this.mChildrenEdges.putAll(map);
        for (Map.Entry entry : this.mChildrenEdges.entrySet()) {
            UseCase useCase = (UseCase) entry.getKey();
            SurfaceEdge surfaceEdge = (SurfaceEdge) entry.getValue();
            useCase.setViewPortCropRect(surfaceEdge.getCropRect());
            useCase.setSensorToBufferTransformMatrix(surfaceEdge.getSensorToBufferTransform());
            useCase.updateSuggestedStreamSpec(getChildStreamSpec(useCase, surfaceEdge.getStreamSpec(), map2), null);
            useCase.notifyState();
        }
    }

    void resetChildren() {
        Threads.checkMainThread();
        Iterator it = this.mChildren.iterator();
        while (it.hasNext()) {
            onUseCaseReset((UseCase) it.next());
        }
    }

    CameraCaptureCallback getParentMetadataCallback() {
        return this.mParentMetadataCallback;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        Threads.checkMainThread();
        if (isUseCaseActive(useCase)) {
            return;
        }
        this.mChildrenActiveState.put(useCase, Boolean.TRUE);
        DeferrableSurface childSurface = getChildSurface(useCase);
        if (childSurface != null) {
            forceSetProvider(getUseCaseEdge(useCase), childSurface, useCase.getSessionConfig());
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        Threads.checkMainThread();
        if (isUseCaseActive(useCase)) {
            this.mChildrenActiveState.put(useCase, Boolean.FALSE);
            getUseCaseEdge(useCase).disconnect();
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        Threads.checkMainThread();
        if (isUseCaseActive(useCase)) {
            SurfaceEdge useCaseEdge = getUseCaseEdge(useCase);
            DeferrableSurface childSurface = getChildSurface(useCase);
            if (childSurface != null) {
                forceSetProvider(useCaseEdge, childSurface, useCase.getSessionConfig());
            } else {
                useCaseEdge.disconnect();
            }
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        DeferrableSurface childSurface;
        Threads.checkMainThread();
        SurfaceEdge useCaseEdge = getUseCaseEdge(useCase);
        if (isUseCaseActive(useCase) && (childSurface = getChildSurface(useCase)) != null) {
            forceSetProvider(useCaseEdge, childSurface, useCase.getSessionConfig());
        }
    }

    private int getChildRotationDegrees(UseCase useCase, CameraInternal cameraInternal) {
        return cameraInternal.getCameraInfo().getSensorRotationDegrees(((ImageOutputConfig) useCase.getCurrentConfig()).getTargetRotation(0));
    }

    private static StreamSpec getChildStreamSpec(UseCase useCase, StreamSpec streamSpec, Map map) {
        StreamSpec.Builder builder = streamSpec.toBuilder();
        Size size = (Size) map.get(useCase);
        if (size != null) {
            builder.setOriginalConfiguredResolution(size);
        }
        return builder.build();
    }

    private static int getChildFormat(UseCase useCase) {
        return useCase instanceof ImageCapture ? 256 : 34;
    }

    private static int getChildTargetType(UseCase useCase) {
        if (useCase instanceof Preview) {
            return 1;
        }
        return useCase instanceof ImageCapture ? 4 : 2;
    }

    private static Map toChildrenConfigsMap(CameraInternal cameraInternal, Set set, UseCaseConfigFactory useCaseConfigFactory) {
        HashMap map = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            map.put(useCase, useCase.mergeConfigs(cameraInternal.getCameraInfoInternal(), null, useCase.getDefaultConfig(true, useCaseConfigFactory)));
        }
        return map;
    }

    private static int getHighestSurfacePriority(Set set) {
        Iterator it = set.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((UseCaseConfig) it.next()).getSurfaceOccupancyPriority(0));
        }
        return iMax;
    }

    private SurfaceEdge getUseCaseEdge(UseCase useCase) {
        SurfaceEdge surfaceEdge = (SurfaceEdge) this.mChildrenEdges.get(useCase);
        Objects.requireNonNull(surfaceEdge);
        return surfaceEdge;
    }

    private boolean isUseCaseActive(UseCase useCase) {
        Boolean bool = (Boolean) this.mChildrenActiveState.get(useCase);
        Objects.requireNonNull(bool);
        return bool.booleanValue();
    }

    private static void forceSetProvider(SurfaceEdge surfaceEdge, DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        surfaceEdge.invalidate();
        try {
            surfaceEdge.setProvider(deferrableSurface);
        } catch (DeferrableSurface.SurfaceClosedException unused) {
            if (sessionConfig.getErrorListener() != null) {
                sessionConfig.getErrorListener().onError(sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
        }
    }

    static DeferrableSurface getChildSurface(UseCase useCase) {
        List surfaces;
        if (useCase instanceof ImageCapture) {
            surfaces = useCase.getSessionConfig().getSurfaces();
        } else {
            surfaces = useCase.getSessionConfig().getRepeatingCaptureConfig().getSurfaces();
        }
        Preconditions.checkState(surfaces.size() <= 1);
        if (surfaces.size() == 1) {
            return (DeferrableSurface) surfaces.get(0);
        }
        return null;
    }

    CameraCaptureCallback createCameraCaptureCallback() {
        return new VirtualCameraCaptureCallback(this);
    }

    static class VirtualCameraCaptureCallback extends CameraCaptureCallback {
        private final WeakReference mVirtualCameraAdapterRef;

        VirtualCameraCaptureCallback(VirtualCameraAdapter virtualCameraAdapter) {
            this.mVirtualCameraAdapterRef = new WeakReference(virtualCameraAdapter);
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
            VirtualCameraAdapter virtualCameraAdapter = (VirtualCameraAdapter) this.mVirtualCameraAdapterRef.get();
            if (virtualCameraAdapter != null) {
                Iterator it = virtualCameraAdapter.mChildren.iterator();
                while (it.hasNext()) {
                    VirtualCameraAdapter.sendCameraCaptureResultToChild(cameraCaptureResult, ((UseCase) it.next()).getSessionConfig(), i);
                }
            }
        }
    }

    static void sendCameraCaptureResultToChild(CameraCaptureResult cameraCaptureResult, SessionConfig sessionConfig, int i) {
        Iterator it = sessionConfig.getRepeatingCameraCaptureCallbacks().iterator();
        while (it.hasNext()) {
            ((CameraCaptureCallback) it.next()).onCaptureCompleted(i, new VirtualCameraCaptureResult(sessionConfig.getRepeatingCaptureConfig().getTagBundle(), cameraCaptureResult));
        }
    }

    private static Range resolveTargetFrameRate(Set set) {
        Range rangeIntersect = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Range targetFrameRate = ((UseCaseConfig) it.next()).getTargetFrameRate(rangeIntersect);
            Objects.requireNonNull(targetFrameRate);
            if (StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED.equals(rangeIntersect)) {
                rangeIntersect = targetFrameRate;
            } else {
                try {
                    rangeIntersect = rangeIntersect.intersect(targetFrameRate);
                } catch (IllegalArgumentException unused) {
                    Logger.m76d("VirtualCameraAdapter", "No intersected frame rate can be found from the target frame rate settings of the UseCases! Resolved: " + rangeIntersect + " <<>> " + targetFrameRate);
                    return rangeIntersect.extend(targetFrameRate);
                }
            }
        }
        return rangeIntersect;
    }
}
