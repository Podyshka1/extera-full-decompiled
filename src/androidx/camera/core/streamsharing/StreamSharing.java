package androidx.camera.core.streamsharing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Log;
import android.util.Size;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class StreamSharing extends UseCase {
    private SurfaceEdge mCameraEdge;
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;
    private final CompositionSettings mCompositionSettings;
    private final StreamSharingConfig mDefaultConfig;
    private SurfaceEdge mDualProcessedEdge;
    private SurfaceEdge mDualSharingInputEdgeForEffect;
    private DualSurfaceProcessorNode mDualSharingNode;
    private SurfaceProcessorNode mDualSharingNodeForEffect;
    private SurfaceProcessorNode mEffectNode;
    private SurfaceEdge mSecondaryCameraEdge;
    private final CompositionSettings mSecondaryCompositionSettings;
    SessionConfig.Builder mSecondarySessionConfigBuilder;
    private SurfaceEdge mSecondarySharingInputEdge;
    SessionConfig.Builder mSessionConfigBuilder;
    private SurfaceEdge mSharingInputEdge;
    private SurfaceProcessorNode mSharingNode;
    private final VirtualCameraAdapter mVirtualCameraAdapter;

    interface Control {
    }

    private static StreamSharingConfig getDefaultConfig(Set set) {
        MutableConfig mutableConfig = new StreamSharingBuilder().getMutableConfig();
        mutableConfig.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
                arrayList.add(useCase.getCurrentConfig().getCaptureType());
            } else {
                Log.e("StreamSharing", "A child does not have capture type.");
            }
        }
        mutableConfig.insertOption(StreamSharingConfig.OPTION_CAPTURE_TYPES, arrayList);
        mutableConfig.insertOption(ImageOutputConfig.OPTION_MIRROR_MODE, 2);
        mutableConfig.insertOption(UseCaseConfig.OPTION_STREAM_USE_CASE, StreamUseCase.PREVIEW_VIDEO_STILL);
        return new StreamSharingConfig(OptionsBundle.from(mutableConfig));
    }

    public StreamSharing(CameraInternal cameraInternal, CameraInternal cameraInternal2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, Set set, UseCaseConfigFactory useCaseConfigFactory) {
        super(getDefaultConfig(set));
        this.mDefaultConfig = getDefaultConfig(set);
        this.mCompositionSettings = compositionSettings;
        this.mSecondaryCompositionSettings = compositionSettings2;
        this.mVirtualCameraAdapter = new VirtualCameraAdapter(cameraInternal, cameraInternal2, set, useCaseConfigFactory, new Control() { // from class: androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda1
        });
        updateFeatureGroup(set);
    }

    public void updateFeatureGroup(Set set) {
        setFeatureGroup(((UseCase) set.iterator().next()).getFeatureGroup());
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        Config config = useCaseConfigFactory.getConfig(this.mDefaultConfig.getCaptureType(), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, this.mDefaultConfig.getConfig());
        }
        if (config == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return new StreamSharingBuilder(MutableOptionsBundle.from(config));
    }

    @Override // androidx.camera.core.UseCase
    protected UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        this.mVirtualCameraAdapter.mergeChildrenConfigs(builder.getMutableConfig());
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecUpdated(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Logger.m76d("StreamSharing", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + streamSpec + ", secondaryStreamSpec " + streamSpec2);
        updateSessionConfig(createPipelineAndUpdateChildrenSpecs(getCameraId(), getSecondaryCameraId(), getCurrentConfig(), streamSpec, streamSpec2));
        notifyActive();
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()}));
        return getAttachedStreamSpec().toBuilder().setImplementationOptions(config).build();
    }

    @Override // androidx.camera.core.UseCase
    public void onBind() {
        super.onBind();
        this.mVirtualCameraAdapter.bindChildren();
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        super.onUnbind();
        clearPipeline();
        this.mVirtualCameraAdapter.unbindChildren();
    }

    @Override // androidx.camera.core.UseCase
    public void onSessionStart() {
        super.onSessionStart();
        this.mVirtualCameraAdapter.notifySessionStart();
    }

    @Override // androidx.camera.core.UseCase
    public void onSessionStop() {
        super.onSessionStop();
        this.mVirtualCameraAdapter.notifySessionStop();
    }

    @Override // androidx.camera.core.UseCase
    public void onCameraControlReady() {
        super.onCameraControlReady();
        this.mVirtualCameraAdapter.notifyCameraControlReady();
    }

    public Set getChildren() {
        return this.mVirtualCameraAdapter.getChildren();
    }

    @Override // androidx.camera.core.UseCase
    public Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(3);
        return hashSet;
    }

    private List createPipelineAndUpdateChildrenSpecs(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        Threads.checkMainThread();
        if (streamSpec2 == null) {
            SurfaceEdge surfaceEdgeCreatePrimaryCameraInputSurface = createPrimaryCameraInputSurface(str, str2, useCaseConfig, streamSpec, null);
            CameraInternal camera = getCamera();
            Objects.requireNonNull(camera);
            SurfaceProcessorNode surfaceProcessorNodeCreateEffectOrCopyNode = createEffectOrCopyNode(camera, streamSpec);
            this.mSharingNode = surfaceProcessorNodeCreateEffectOrCopyNode;
            transformAndOutputToChildUseCases(surfaceEdgeCreatePrimaryCameraInputSurface, surfaceProcessorNodeCreateEffectOrCopyNode, false);
            return ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()});
        }
        SurfaceEdge surfaceEdgeCreatePrimaryCameraInputSurface2 = createPrimaryCameraInputSurface(str, str2, useCaseConfig, streamSpec, streamSpec2);
        SurfaceEdge surfaceEdgeCreateSecondaryCameraInputSurface = createSecondaryCameraInputSurface(str, str2, useCaseConfig, streamSpec, streamSpec2);
        DualSurfaceProcessorNode dualSurfaceProcessorNodeCreateDualSharingNode = createDualSharingNode(getCamera(), getSecondaryCamera(), streamSpec, this.mCompositionSettings, this.mSecondaryCompositionSettings);
        this.mDualSharingNode = dualSurfaceProcessorNodeCreateDualSharingNode;
        transformDualSurfacesAndOutputToChildUseCases(surfaceEdgeCreatePrimaryCameraInputSurface2, surfaceEdgeCreateSecondaryCameraInputSurface, dualSurfaceProcessorNodeCreateDualSharingNode, streamSpec);
        return ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build(), this.mSecondarySessionConfigBuilder.build()});
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void transformAndOutputToChildUseCases(SurfaceEdge surfaceEdge, SurfaceProcessorNode surfaceProcessorNode, boolean z) {
        boolean z2 = getViewPortCropRect() != null;
        Map childrenOutConfigs = this.mVirtualCameraAdapter.getChildrenOutConfigs(surfaceEdge, getTargetRotationInternal(), z2, z);
        SurfaceProcessorNode.Out outTransform = surfaceProcessorNode.transform(SurfaceProcessorNode.AbstractC0298In.m98of(surfaceEdge, new ArrayList(childrenOutConfigs.values())));
        HashMap map = new HashMap();
        for (Map.Entry entry : childrenOutConfigs.entrySet()) {
            map.put((UseCase) entry.getKey(), (SurfaceEdge) outTransform.get(entry.getValue()));
        }
        this.mVirtualCameraAdapter.setChildrenEdges(map, this.mVirtualCameraAdapter.getSelectedChildSizes(surfaceEdge, z2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void transformDualSurfacesAndOutputToChildUseCases(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, DualSurfaceProcessorNode dualSurfaceProcessorNode, StreamSpec streamSpec) {
        getEffect();
        boolean z = getViewPortCropRect() != null;
        Map childrenOutConfigs = this.mVirtualCameraAdapter.getChildrenOutConfigs(surfaceEdge, surfaceEdge2, getTargetRotationInternal(), z);
        DualSurfaceProcessorNode.Out outTransform = this.mDualSharingNode.transform(DualSurfaceProcessorNode.AbstractC0300In.m100of(surfaceEdge, surfaceEdge2, new ArrayList(childrenOutConfigs.values())));
        HashMap map = new HashMap();
        for (Map.Entry entry : childrenOutConfigs.entrySet()) {
            map.put((UseCase) entry.getKey(), (SurfaceEdge) outTransform.get(entry.getValue()));
        }
        this.mVirtualCameraAdapter.setChildrenEdges(map, this.mVirtualCameraAdapter.getSelectedChildSizes(surfaceEdge, z));
    }

    private SurfaceEdge createPrimaryCameraInputSurface(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        Matrix sensorToBufferTransformMatrix = getSensorToBufferTransformMatrix();
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        boolean hasTransform = camera.getHasTransform();
        Rect cropRect = getCropRect(streamSpec.getResolution());
        Objects.requireNonNull(cropRect);
        CameraInternal camera2 = getCamera();
        Objects.requireNonNull(camera2);
        int relativeRotation = getRelativeRotation(camera2);
        CameraInternal camera3 = getCamera();
        Objects.requireNonNull(camera3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, streamSpec, sensorToBufferTransformMatrix, hasTransform, cropRect, relativeRotation, -1, isMirroringRequired(camera3));
        this.mCameraEdge = surfaceEdge;
        boolean z = str2 != null;
        CameraInternal camera4 = getCamera();
        Objects.requireNonNull(camera4);
        this.mSharingInputEdge = getSharingInputEdge(surfaceEdge, camera4, z);
        SessionConfig.Builder builderCreateSessionConfigBuilder = createSessionConfigBuilder(this.mCameraEdge, useCaseConfig, streamSpec);
        this.mSessionConfigBuilder = builderCreateSessionConfigBuilder;
        addCameraErrorListener(builderCreateSessionConfigBuilder, str, str2, useCaseConfig, streamSpec, streamSpec2);
        return this.mSharingInputEdge;
    }

    private SurfaceEdge createSecondaryCameraInputSurface(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        Matrix sensorToBufferTransformMatrix = getSensorToBufferTransformMatrix();
        CameraInternal secondaryCamera = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera);
        boolean hasTransform = secondaryCamera.getHasTransform();
        Rect cropRect = getCropRect(streamSpec2.getResolution());
        Objects.requireNonNull(cropRect);
        CameraInternal secondaryCamera2 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera2);
        int relativeRotation = getRelativeRotation(secondaryCamera2);
        CameraInternal secondaryCamera3 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, streamSpec2, sensorToBufferTransformMatrix, hasTransform, cropRect, relativeRotation, -1, isMirroringRequired(secondaryCamera3));
        this.mSecondaryCameraEdge = surfaceEdge;
        CameraInternal secondaryCamera4 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera4);
        this.mSecondarySharingInputEdge = getSharingInputEdge(surfaceEdge, secondaryCamera4, true);
        SessionConfig.Builder builderCreateSessionConfigBuilder = createSessionConfigBuilder(this.mSecondaryCameraEdge, useCaseConfig, streamSpec2);
        this.mSecondarySessionConfigBuilder = builderCreateSessionConfigBuilder;
        addCameraErrorListener(builderCreateSessionConfigBuilder, str, str2, useCaseConfig, streamSpec, streamSpec2);
        return this.mSecondarySharingInputEdge;
    }

    private SessionConfig.Builder createSessionConfigBuilder(SurfaceEdge surfaceEdge, UseCaseConfig useCaseConfig, StreamSpec streamSpec) {
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(useCaseConfig, streamSpec.getResolution());
        propagateChildrenTemplate(builderCreateFrom);
        propagateChildrenCamera2Interop(streamSpec.getResolution(), builderCreateFrom);
        builderCreateFrom.addSurface(surfaceEdge.getDeferrableSurface(), streamSpec.getDynamicRange(), null, -1);
        builderCreateFrom.addRepeatingCameraCaptureCallback(this.mVirtualCameraAdapter.getParentMetadataCallback());
        if (streamSpec.getImplementationOptions() != null) {
            builderCreateFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        builderCreateFrom.setSessionType(streamSpec.getSessionType());
        applyExpectedFrameRateRange(builderCreateFrom, streamSpec);
        return builderCreateFrom;
    }

    private void propagateChildrenTemplate(SessionConfig.Builder builder) {
        Iterator it = getChildren().iterator();
        int higherPriorityTemplateType = -1;
        while (it.hasNext()) {
            higherPriorityTemplateType = SessionConfig.getHigherPriorityTemplateType(higherPriorityTemplateType, getChildTemplate((UseCase) it.next()));
        }
        if (higherPriorityTemplateType != -1) {
            builder.setTemplateType(higherPriorityTemplateType);
        }
    }

    private static int getChildTemplate(UseCase useCase) {
        return useCase.getCurrentConfig().getDefaultSessionConfig().getTemplateType();
    }

    private void propagateChildrenCamera2Interop(Size size, SessionConfig.Builder builder) {
        Iterator it = getChildren().iterator();
        while (it.hasNext()) {
            SessionConfig sessionConfigBuild = SessionConfig.Builder.createFrom(((UseCase) it.next()).getCurrentConfig(), size).build();
            builder.addAllRepeatingCameraCaptureCallbacks(sessionConfigBuild.getRepeatingCameraCaptureCallbacks());
            builder.addAllCameraCaptureCallbacks(sessionConfigBuild.getSingleCameraCaptureCallbacks());
            builder.addAllSessionStateCallbacks(sessionConfigBuild.getSessionStateCallbacks());
            builder.addAllDeviceStateCallbacks(sessionConfigBuild.getDeviceStateCallbacks());
            builder.addImplementationOptions(sessionConfigBuild.getImplementationOptions());
        }
    }

    private SurfaceEdge getSharingInputEdge(SurfaceEdge surfaceEdge, CameraInternal cameraInternal, boolean z) {
        getEffect();
        return surfaceEdge;
    }

    private SurfaceProcessorNode createEffectOrCopyNode(CameraInternal cameraInternal, StreamSpec streamSpec) {
        getEffect();
        return new SurfaceProcessorNode(cameraInternal, DefaultSurfaceProcessor.Factory.newInstance(streamSpec.getDynamicRange()), "StreamSharing");
    }

    private DualSurfaceProcessorNode createDualSharingNode(CameraInternal cameraInternal, CameraInternal cameraInternal2, StreamSpec streamSpec, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        return new DualSurfaceProcessorNode(cameraInternal, cameraInternal2, DualSurfaceProcessor.Factory.newInstance(streamSpec.getDynamicRange(), compositionSettings, compositionSettings2), "StreamSharing");
    }

    private void addCameraErrorListener(SessionConfig.Builder builder, final String str, final String str2, final UseCaseConfig useCaseConfig, final StreamSpec streamSpec, final StreamSpec streamSpec2) {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda2
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                StreamSharing.$r8$lambda$ii4n5MMe9ie3N3t9WQpFcwenlq4(this.f$0, str, str2, useCaseConfig, streamSpec, streamSpec2, sessionConfig, sessionError);
            }
        });
        this.mCloseableErrorListener = closeableErrorListener2;
        builder.setErrorListener(closeableErrorListener2);
    }

    public static /* synthetic */ void $r8$lambda$ii4n5MMe9ie3N3t9WQpFcwenlq4(StreamSharing streamSharing, String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        if (streamSharing.getCamera() == null) {
            return;
        }
        streamSharing.clearPipeline();
        streamSharing.updateSessionConfig(streamSharing.createPipelineAndUpdateChildrenSpecs(str, str2, useCaseConfig, streamSpec, streamSpec2));
        streamSharing.notifyReset();
        streamSharing.mVirtualCameraAdapter.resetChildren();
    }

    private void clearPipeline() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        SurfaceEdge surfaceEdge2 = this.mSecondaryCameraEdge;
        if (surfaceEdge2 != null) {
            surfaceEdge2.close();
            this.mSecondaryCameraEdge = null;
        }
        SurfaceEdge surfaceEdge3 = this.mSharingInputEdge;
        if (surfaceEdge3 != null) {
            surfaceEdge3.close();
            this.mSharingInputEdge = null;
        }
        SurfaceEdge surfaceEdge4 = this.mSecondarySharingInputEdge;
        if (surfaceEdge4 != null) {
            surfaceEdge4.close();
            this.mSecondarySharingInputEdge = null;
        }
        SurfaceEdge surfaceEdge5 = this.mDualProcessedEdge;
        if (surfaceEdge5 != null) {
            surfaceEdge5.close();
            this.mDualProcessedEdge = null;
        }
        SurfaceEdge surfaceEdge6 = this.mDualSharingInputEdgeForEffect;
        if (surfaceEdge6 != null) {
            surfaceEdge6.close();
            this.mDualSharingInputEdgeForEffect = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.mSharingNode;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.release();
            this.mSharingNode = null;
        }
        DualSurfaceProcessorNode dualSurfaceProcessorNode = this.mDualSharingNode;
        if (dualSurfaceProcessorNode != null) {
            dualSurfaceProcessorNode.release();
            this.mDualSharingNode = null;
        }
        SurfaceProcessorNode surfaceProcessorNode2 = this.mEffectNode;
        if (surfaceProcessorNode2 != null) {
            surfaceProcessorNode2.release();
            this.mEffectNode = null;
        }
        SurfaceProcessorNode surfaceProcessorNode3 = this.mDualSharingNodeForEffect;
        if (surfaceProcessorNode3 != null) {
            surfaceProcessorNode3.release();
            this.mDualSharingNodeForEffect = null;
        }
    }

    private Rect getCropRect(Size size) {
        if (getViewPortCropRect() != null) {
            return getViewPortCropRect();
        }
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    public static List getCaptureTypes(UseCase useCase) {
        ArrayList arrayList = new ArrayList();
        if (isStreamSharing(useCase)) {
            Iterator it = ((StreamSharing) useCase).getChildren().iterator();
            while (it.hasNext()) {
                arrayList.add(((UseCase) it.next()).getCurrentConfig().getCaptureType());
            }
            return arrayList;
        }
        arrayList.add(useCase.getCurrentConfig().getCaptureType());
        return arrayList;
    }

    public static boolean isStreamSharing(UseCase useCase) {
        return useCase instanceof StreamSharing;
    }

    @Override // androidx.camera.core.UseCase
    public Set getSupportedDynamicRanges(CameraInfoInternal cameraInfoInternal) {
        Set children = getChildren();
        HashSet hashSet = null;
        if (children.isEmpty()) {
            return null;
        }
        Iterator it = children.iterator();
        while (it.hasNext()) {
            Set supportedDynamicRanges = ((UseCase) it.next()).getSupportedDynamicRanges(cameraInfoInternal);
            if (supportedDynamicRanges != null) {
                if (hashSet == null) {
                    hashSet = new HashSet(supportedDynamicRanges);
                } else {
                    hashSet.retainAll(supportedDynamicRanges);
                }
            }
        }
        return hashSet;
    }
}
