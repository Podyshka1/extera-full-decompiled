package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.DynamicRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import androidx.camera.core.internal.utils.UseCaseConfigUtil;
import androidx.camera.core.processing.TargetUtils;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCase {
    private StreamSpec mAttachedStreamSpec;
    private CameraInternal mCamera;
    private UseCaseConfig mCameraConfig;
    private UseCaseConfig mCurrentConfig;
    private UseCaseConfig mExtendedConfig;
    private Set mFeatureGroup;
    private String mPhysicalCameraId;
    private CameraInternal mSecondaryCamera;
    private UseCaseConfig mUseCaseConfig;
    private Rect mViewPortCropRect;
    private boolean mInSession = false;
    private final Set mStateChangeCallbacks = new HashSet();
    private final Object mCameraLock = new Object();
    private final Object mRotationProviderLock = new Object();
    private State mState = State.INACTIVE;
    private Matrix mSensorToBufferTransformMatrix = new Matrix();
    private RotationProvider mRotationProvider = null;
    private final RotationProvider.Listener mRotationListener = new RotationProvider.Listener() { // from class: androidx.camera.core.UseCase$$ExternalSyntheticLambda0
        @Override // androidx.camera.core.RotationProvider.Listener
        public final void onRotationChanged(int i) {
            this.f$0.onProviderRotationChanged(i);
        }
    };
    private androidx.camera.core.impl.SessionConfig mAttachedSessionConfig = androidx.camera.core.impl.SessionConfig.defaultEmptySessionConfig();
    private androidx.camera.core.impl.SessionConfig mAttachedSecondarySessionConfig = androidx.camera.core.impl.SessionConfig.defaultEmptySessionConfig();

    enum State {
        ACTIVE,
        INACTIVE
    }

    public interface StateChangeCallback {
        void onUseCaseActive(UseCase useCase);

        void onUseCaseInactive(UseCase useCase);

        void onUseCaseReset(UseCase useCase);

        void onUseCaseUpdated(UseCase useCase);
    }

    public abstract UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory);

    public CameraEffect getEffect() {
        return null;
    }

    public Set getSupportedDynamicRanges(CameraInfoInternal cameraInfoInternal) {
        return null;
    }

    public abstract UseCaseConfig.Builder getUseCaseConfigBuilder(Config config);

    public boolean isAutoRotationSupported() {
        return false;
    }

    public void onBind() {
    }

    public void onCameraControlReady() {
    }

    protected abstract StreamSpec onSuggestedStreamSpecUpdated(StreamSpec streamSpec, StreamSpec streamSpec2);

    public void onUnbind() {
    }

    protected UseCase(UseCaseConfig useCaseConfig) {
        this.mUseCaseConfig = useCaseConfig;
        this.mCurrentConfig = useCaseConfig;
    }

    public UseCaseConfig mergeConfigs(CameraInfoInternal cameraInfoInternal, UseCaseConfig useCaseConfig, UseCaseConfig useCaseConfig2) {
        MutableOptionsBundle mutableOptionsBundleCreate;
        if (useCaseConfig2 != null) {
            mutableOptionsBundleCreate = MutableOptionsBundle.from((Config) useCaseConfig2);
            mutableOptionsBundleCreate.removeOption(TargetConfig.OPTION_TARGET_NAME);
        } else {
            mutableOptionsBundleCreate = MutableOptionsBundle.create();
        }
        if (this.mUseCaseConfig.containsOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO) || this.mUseCaseConfig.containsOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION)) {
            Config.Option option = ImageOutputConfig.OPTION_RESOLUTION_SELECTOR;
            if (mutableOptionsBundleCreate.containsOption(option)) {
                mutableOptionsBundleCreate.removeOption(option);
            }
        }
        UseCaseConfig useCaseConfig3 = this.mUseCaseConfig;
        Config.Option option2 = ImageOutputConfig.OPTION_RESOLUTION_SELECTOR;
        if (useCaseConfig3.containsOption(option2)) {
            Config.Option option3 = ImageOutputConfig.OPTION_MAX_RESOLUTION;
            if (mutableOptionsBundleCreate.containsOption(option3) && ((ResolutionSelector) this.mUseCaseConfig.retrieveOption(option2)).getResolutionStrategy() != null) {
                mutableOptionsBundleCreate.removeOption(option3);
            }
        }
        Iterator it = this.mUseCaseConfig.listOptions().iterator();
        while (it.hasNext()) {
            Config.CC.mergeOptionValue(mutableOptionsBundleCreate, mutableOptionsBundleCreate, this.mUseCaseConfig, (Config.Option) it.next());
        }
        if (useCaseConfig != null) {
            for (Config.Option option4 : useCaseConfig.listOptions()) {
                if (!option4.getId().equals(TargetConfig.OPTION_TARGET_NAME.getId())) {
                    Config.CC.mergeOptionValue(mutableOptionsBundleCreate, mutableOptionsBundleCreate, useCaseConfig, option4);
                }
            }
        }
        if (mutableOptionsBundleCreate.containsOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION)) {
            Config.Option option5 = ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO;
            if (mutableOptionsBundleCreate.containsOption(option5)) {
                mutableOptionsBundleCreate.removeOption(option5);
            }
        }
        Config.Option option6 = ImageOutputConfig.OPTION_RESOLUTION_SELECTOR;
        if (mutableOptionsBundleCreate.containsOption(option6) && ((ResolutionSelector) mutableOptionsBundleCreate.retrieveOption(option6)).getAllowedResolutionMode() != 0) {
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.TRUE);
        }
        applyFeatureGroupToConfig(mutableOptionsBundleCreate);
        return onMergeConfig(cameraInfoInternal, getUseCaseConfigBuilder(mutableOptionsBundleCreate));
    }

    protected UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        return builder.getUseCaseConfig();
    }

    public void setPhysicalCameraId(String str) {
        this.mPhysicalCameraId = str;
    }

    public String getPhysicalCameraId() {
        return this.mPhysicalCameraId;
    }

    protected boolean setTargetRotationInternal(int i) {
        int targetRotation = ((ImageOutputConfig) getCurrentConfig()).getTargetRotation(-1);
        if (targetRotation != -1 && targetRotation == i) {
            return false;
        }
        UseCaseConfig.Builder useCaseConfigBuilder = getUseCaseConfigBuilder(this.mUseCaseConfig);
        UseCaseConfigUtil.updateTargetRotationAndRelatedConfigs(useCaseConfigBuilder, i);
        this.mUseCaseConfig = useCaseConfigBuilder.getUseCaseConfig();
        CameraInternal camera = getCamera();
        if (camera == null) {
            this.mCurrentConfig = this.mUseCaseConfig;
            return true;
        }
        this.mCurrentConfig = mergeConfigs(camera.getCameraInfoInternal(), this.mExtendedConfig, this.mCameraConfig);
        return true;
    }

    protected void onProviderRotationChanged(int i) {
        setTargetRotationInternal(i);
    }

    protected int getTargetRotationInternal() {
        return ((ImageOutputConfig) this.mCurrentConfig).getTargetRotation(0);
    }

    protected int getMirrorModeInternal() {
        return ((ImageOutputConfig) this.mCurrentConfig).getMirrorMode(-1);
    }

    public boolean isMirroringRequired(CameraInternal cameraInternal) {
        int mirrorModeInternal = getMirrorModeInternal();
        if (mirrorModeInternal == -1 || mirrorModeInternal == 0) {
            return false;
        }
        if (mirrorModeInternal == 1) {
            return true;
        }
        if (mirrorModeInternal == 2) {
            return cameraInternal.isFrontFacing();
        }
        throw new AssertionError("Unknown mirrorMode: " + mirrorModeInternal);
    }

    protected int getAppTargetRotation() {
        return ((ImageOutputConfig) this.mCurrentConfig).getAppTargetRotation(-1);
    }

    protected int getRelativeRotation(CameraInternal cameraInternal) {
        return getRelativeRotation(cameraInternal, false);
    }

    protected int getRelativeRotation(CameraInternal cameraInternal, boolean z) {
        int sensorRotationDegrees = cameraInternal.getCameraInfoInternal().getSensorRotationDegrees(getTargetRotationInternal());
        return (cameraInternal.getHasTransform() || !z) ? sensorRotationDegrees : TransformUtils.within360(-sensorRotationDegrees);
    }

    protected void updateSessionConfig(List list) {
        if (list.isEmpty()) {
            return;
        }
        this.mAttachedSessionConfig = (androidx.camera.core.impl.SessionConfig) list.get(0);
        if (list.size() > 1) {
            this.mAttachedSecondarySessionConfig = (androidx.camera.core.impl.SessionConfig) list.get(1);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            for (DeferrableSurface deferrableSurface : ((androidx.camera.core.impl.SessionConfig) it.next()).getSurfaces()) {
                if (deferrableSurface.getContainerClass() == null) {
                    deferrableSurface.setContainerClass(getClass());
                }
            }
        }
    }

    private void addStateChangeCallback(StateChangeCallback stateChangeCallback) {
        this.mStateChangeCallbacks.add(stateChangeCallback);
    }

    private void removeStateChangeCallback(StateChangeCallback stateChangeCallback) {
        this.mStateChangeCallbacks.remove(stateChangeCallback);
    }

    public androidx.camera.core.impl.SessionConfig getSessionConfig() {
        return this.mAttachedSessionConfig;
    }

    public androidx.camera.core.impl.SessionConfig getSecondarySessionConfig() {
        return this.mAttachedSecondarySessionConfig;
    }

    protected final void notifyActive() {
        this.mState = State.ACTIVE;
        notifyState();
    }

    protected final void notifyInactive() {
        this.mState = State.INACTIVE;
        notifyState();
    }

    protected final void notifyUpdated() {
        Iterator it = this.mStateChangeCallbacks.iterator();
        while (it.hasNext()) {
            ((StateChangeCallback) it.next()).onUseCaseUpdated(this);
        }
    }

    protected final void notifyReset() {
        Iterator it = this.mStateChangeCallbacks.iterator();
        while (it.hasNext()) {
            ((StateChangeCallback) it.next()).onUseCaseReset(this);
        }
    }

    public final void notifyState() {
        int iOrdinal = this.mState.ordinal();
        if (iOrdinal == 0) {
            Iterator it = this.mStateChangeCallbacks.iterator();
            while (it.hasNext()) {
                ((StateChangeCallback) it.next()).onUseCaseActive(this);
            }
        } else {
            if (iOrdinal != 1) {
                return;
            }
            Iterator it2 = this.mStateChangeCallbacks.iterator();
            while (it2.hasNext()) {
                ((StateChangeCallback) it2.next()).onUseCaseInactive(this);
            }
        }
    }

    protected String getCameraId() {
        return ((CameraInternal) Preconditions.checkNotNull(getCamera(), "No camera attached to use case: " + this)).getCameraInfoInternal().getCameraId();
    }

    protected String getSecondaryCameraId() {
        if (getSecondaryCamera() == null) {
            return null;
        }
        return getSecondaryCamera().getCameraInfoInternal().getCameraId();
    }

    public String getName() {
        String targetName = this.mCurrentConfig.getTargetName("<UnknownUseCase-" + hashCode() + ">");
        Objects.requireNonNull(targetName);
        return targetName;
    }

    public UseCaseConfig getAppConfig() {
        return this.mUseCaseConfig;
    }

    public UseCaseConfig getCurrentConfig() {
        return this.mCurrentConfig;
    }

    public CameraInternal getCamera() {
        CameraInternal cameraInternal;
        synchronized (this.mCameraLock) {
            cameraInternal = this.mCamera;
        }
        return cameraInternal;
    }

    public CameraInternal getSecondaryCamera() {
        CameraInternal cameraInternal;
        synchronized (this.mCameraLock) {
            cameraInternal = this.mSecondaryCamera;
        }
        return cameraInternal;
    }

    public Size getAttachedSurfaceResolution() {
        StreamSpec streamSpec = this.mAttachedStreamSpec;
        if (streamSpec != null) {
            return streamSpec.getResolution();
        }
        return null;
    }

    public StreamSpec getAttachedStreamSpec() {
        return this.mAttachedStreamSpec;
    }

    public void updateSuggestedStreamSpec(StreamSpec streamSpec, StreamSpec streamSpec2) {
        this.mAttachedStreamSpec = onSuggestedStreamSpecUpdated(streamSpec, streamSpec2);
    }

    public void updateSuggestedStreamSpecImplementationOptions(Config config) {
        this.mAttachedStreamSpec = onSuggestedStreamSpecImplementationOptionsUpdated(config);
    }

    protected StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        StreamSpec streamSpec = this.mAttachedStreamSpec;
        if (streamSpec == null) {
            throw new UnsupportedOperationException("Attempt to update the implementation options for a use case without attached stream specifications.");
        }
        return streamSpec.toBuilder().setImplementationOptions(config).build();
    }

    public final void bindToCamera(CameraInternal cameraInternal, CameraInternal cameraInternal2, UseCaseConfig useCaseConfig, UseCaseConfig useCaseConfig2) {
        synchronized (this.mCameraLock) {
            try {
                this.mCamera = cameraInternal;
                this.mSecondaryCamera = cameraInternal2;
                addStateChangeCallback(cameraInternal);
                if (cameraInternal2 != null) {
                    addStateChangeCallback(cameraInternal2);
                }
            } finally {
            }
        }
        this.mExtendedConfig = useCaseConfig;
        this.mCameraConfig = useCaseConfig2;
        this.mCurrentConfig = mergeConfigs(cameraInternal.getCameraInfoInternal(), this.mExtendedConfig, this.mCameraConfig);
        synchronized (this.mRotationProviderLock) {
            try {
                RotationProvider rotationProvider = this.mRotationProvider;
                if (rotationProvider != null) {
                    rotationProvider.addListener(CameraXExecutors.mainThreadExecutor(), this.mRotationListener);
                }
            } finally {
            }
        }
        onBind();
    }

    public final void unbindFromCamera(CameraInternal cameraInternal) {
        onUnbind();
        synchronized (this.mCameraLock) {
            try {
                CameraInternal cameraInternal2 = this.mCamera;
                if (cameraInternal == cameraInternal2) {
                    removeStateChangeCallback(cameraInternal2);
                    this.mCamera = null;
                }
                CameraInternal cameraInternal3 = this.mSecondaryCamera;
                if (cameraInternal == cameraInternal3) {
                    removeStateChangeCallback(cameraInternal3);
                    this.mSecondaryCamera = null;
                }
            } finally {
            }
        }
        synchronized (this.mRotationProviderLock) {
            try {
                RotationProvider rotationProvider = this.mRotationProvider;
                if (rotationProvider != null) {
                    rotationProvider.removeListener(this.mRotationListener);
                }
            } finally {
            }
        }
        this.mAttachedStreamSpec = null;
        this.mViewPortCropRect = null;
        this.mCurrentConfig = this.mUseCaseConfig;
        this.mExtendedConfig = null;
        this.mCameraConfig = null;
    }

    public void onSessionStart() {
        this.mInSession = true;
    }

    public void onSessionStop() {
        this.mInSession = false;
    }

    protected CameraControlInternal getCameraControl() {
        synchronized (this.mCameraLock) {
            try {
                CameraInternal cameraInternal = this.mCamera;
                if (cameraInternal == null) {
                    return CameraControlInternal.DEFAULT_EMPTY_INSTANCE;
                }
                return cameraInternal.getCameraControlInternal();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setViewPortCropRect(Rect rect) {
        this.mViewPortCropRect = rect;
    }

    public void setEffect(CameraEffect cameraEffect) {
        Preconditions.checkArgument(true);
    }

    public Rect getViewPortCropRect() {
        return this.mViewPortCropRect;
    }

    public void setSensorToBufferTransformMatrix(Matrix matrix) {
        this.mSensorToBufferTransformMatrix = new Matrix(matrix);
    }

    public Matrix getSensorToBufferTransformMatrix() {
        return this.mSensorToBufferTransformMatrix;
    }

    public int getImageFormat() {
        return this.mCurrentConfig.getInputFormat();
    }

    protected Set getSupportedEffectTargets() {
        return Collections.EMPTY_SET;
    }

    public boolean isEffectTargetsSupported(int i) {
        Iterator it = getSupportedEffectTargets().iterator();
        while (it.hasNext()) {
            if (TargetUtils.isSuperset(i, ((Integer) it.next()).intValue())) {
                return true;
            }
        }
        return false;
    }

    protected void applyExpectedFrameRateRange(SessionConfig.Builder builder, StreamSpec streamSpec) {
        if (!StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED.equals(streamSpec.getExpectedFrameRateRange())) {
            builder.setExpectedFrameRateRange(streamSpec.getExpectedFrameRateRange());
            return;
        }
        synchronized (this.mCameraLock) {
            try {
                List all = ((CameraInternal) Preconditions.checkNotNull(this.mCamera)).getCameraInfoInternal().getCameraQuirks().getAll(AeFpsRangeQuirk.class);
                boolean z = true;
                if (all.size() > 1) {
                    z = false;
                }
                Preconditions.checkArgument(z, "There should not have more than one AeFpsRangeQuirk.");
                if (!all.isEmpty()) {
                    builder.setExpectedFrameRateRange(((AeFpsRangeQuirk) all.get(0)).getTargetAeFpsRange());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFeatureGroup(Set set) {
        this.mFeatureGroup = set != null ? new HashSet(set) : null;
    }

    public Set getFeatureGroup() {
        return this.mFeatureGroup;
    }

    /* JADX INFO: renamed from: androidx.camera.core.UseCase$1 */
    static /* synthetic */ class C02561 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$camera$core$impl$stabilization$VideoStabilization */
        static final /* synthetic */ int[] f21x87bdfeac;

        static {
            int[] iArr = new int[VideoStabilization.values().length];
            f21x87bdfeac = iArr;
            try {
                iArr[VideoStabilization.UNSPECIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21x87bdfeac[VideoStabilization.OFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21x87bdfeac[VideoStabilization.f25ON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21x87bdfeac[VideoStabilization.PREVIEW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void applyFeatureGroupToConfig(MutableOptionsBundle mutableOptionsBundle) {
        Logger.m76d("UseCase", "applyFeaturesToConfig: mFeatureGroup = " + this.mFeatureGroup + ", this = " + this);
        Set<GroupableFeature> set = this.mFeatureGroup;
        if (set == null) {
            return;
        }
        DynamicRange dynamicRange = DynamicRangeFeature.DEFAULT_DYNAMIC_RANGE;
        Range range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        VideoStabilization videoStabilization = VideoStabilizationFeature.DEFAULT_STABILIZATION;
        for (GroupableFeature groupableFeature : set) {
            if (groupableFeature instanceof DynamicRangeFeature) {
                dynamicRange = ((DynamicRangeFeature) groupableFeature).getDynamicRange();
            } else if (groupableFeature instanceof FpsRangeFeature) {
                FpsRangeFeature fpsRangeFeature = (FpsRangeFeature) groupableFeature;
                range = new Range(Integer.valueOf(fpsRangeFeature.getMinFps()), Integer.valueOf(fpsRangeFeature.getMaxFps()));
            } else if (groupableFeature instanceof VideoStabilizationFeature) {
                videoStabilization = ((VideoStabilizationFeature) groupableFeature).getVideoStabilization();
            }
        }
        if ((this instanceof Preview) || UseCaseUtil.isVideoCapture(this)) {
            mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
        }
        mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, range);
        int i = C02561.f21x87bdfeac[videoStabilization.ordinal()];
        if (i == 1) {
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0);
            return;
        }
        if (i == 2) {
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 1);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 1);
        } else if (i != 3) {
            if (i != 4) {
                return;
            }
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 2);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0);
        } else {
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 2);
        }
    }

    public void setRotationProvider(RotationProvider rotationProvider) {
        synchronized (this.mRotationProviderLock) {
            this.mRotationProvider = rotationProvider;
        }
    }
}
