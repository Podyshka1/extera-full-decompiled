package androidx.camera.camera2.impl;

import android.content.Context;
import android.media.MediaCodec;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.config.UseCaseCameraComponent;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.impl.MeteringRepeating;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseManager {
    private volatile UseCaseCameraComponent _activeComponent;
    private boolean activeResumeEnabled;
    private final Set activeUseCases;
    private final Set allControls;
    private final Set attachedUseCases;
    private final UseCaseCameraComponent.Builder builder;
    private final Camera2CameraControl camera2CameraControl;
    private final CameraCoordinator cameraCoordinator;
    private final CameraGraphConfigProvider cameraGraphConfigProvider;
    private final Provider cameraInfoInternal;
    private final Provider cameraInternal;
    private final CameraPipe cameraPipe;
    private final CameraProperties cameraProperties;
    private final CameraStateAdapter cameraStateAdapter;
    private final CameraXConfig cameraXConfig;
    private final List closingCameraJobs;
    private final Set controls;
    private final Function1 defaultCameraGraphFactory;
    private UseCaseCameraConfig deferredUseCaseCameraConfig;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private boolean isPrimary;
    private final Object lock;
    private final LowLightBoostControl lowLightBoostControl;
    private final MeteringRepeating meteringRepeating;
    private final Set pendingUseCasesToNotifyCameraControlReady;
    private boolean shouldCreateCameraGraphImmediately;
    private final SupportedSurfaceCombination supportedSurfaceCombination;
    private final Provider useCaseThreads;
    private final ZslControl zslControl;

    public interface RunningUseCasesChangeListener {
        void onRunningUseCasesChanged(Set set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph resumeDeferredComponentCreation$lambda$0$0(CameraGraph cameraGraph, CameraGraph.Config config) {
        Intrinsics.checkNotNullParameter(config, "<unused var>");
        return cameraGraph;
    }

    public UseCaseManager(CameraPipe cameraPipe, CameraCoordinator cameraCoordinator, UseCaseCameraComponent.Builder builder, ZslControl zslControl, LowLightBoostControl lowLightBoostControl, Set controls, Camera2CameraControl camera2CameraControl, CameraStateAdapter cameraStateAdapter, Provider cameraInternal, Provider useCaseThreads, Provider cameraInfoInternal, EncoderProfilesProvider encoderProfilesProvider, CameraProperties cameraProperties, CameraXConfig cameraXConfig, CameraGraphConfigProvider cameraGraphConfigProvider, Context context, DisplayInfoManager displayInfoManager) {
        Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
        Intrinsics.checkNotNullParameter(cameraCoordinator, "cameraCoordinator");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(zslControl, "zslControl");
        Intrinsics.checkNotNullParameter(lowLightBoostControl, "lowLightBoostControl");
        Intrinsics.checkNotNullParameter(controls, "controls");
        Intrinsics.checkNotNullParameter(camera2CameraControl, "camera2CameraControl");
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        Intrinsics.checkNotNullParameter(cameraInternal, "cameraInternal");
        Intrinsics.checkNotNullParameter(useCaseThreads, "useCaseThreads");
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        Intrinsics.checkNotNullParameter(encoderProfilesProvider, "encoderProfilesProvider");
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(cameraXConfig, "cameraXConfig");
        Intrinsics.checkNotNullParameter(cameraGraphConfigProvider, "cameraGraphConfigProvider");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(displayInfoManager, "displayInfoManager");
        this.cameraPipe = cameraPipe;
        this.cameraCoordinator = cameraCoordinator;
        this.builder = builder;
        this.zslControl = zslControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.controls = controls;
        this.camera2CameraControl = camera2CameraControl;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraInternal = cameraInternal;
        this.useCaseThreads = useCaseThreads;
        this.cameraInfoInternal = cameraInfoInternal;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.cameraProperties = cameraProperties;
        this.cameraXConfig = cameraXConfig;
        this.cameraGraphConfigProvider = cameraGraphConfigProvider;
        this.lock = new Object();
        this.attachedUseCases = new LinkedHashSet();
        this.activeUseCases = new LinkedHashSet();
        this.shouldCreateCameraGraphImmediately = true;
        this.isPrimary = true;
        this.pendingUseCasesToNotifyCameraControlReady = new LinkedHashSet();
        this.meteringRepeating = new MeteringRepeating.Builder(cameraProperties, displayInfoManager).build();
        this.supportedSurfaceCombination = new SupportedSurfaceCombination(context, cameraProperties.getMetadata(), encoderProfilesProvider, FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY);
        this.dynamicRangeResolver = new DynamicRangeResolver(cameraProperties.getMetadata());
        this.defaultCameraGraphFactory = new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UseCaseManager.defaultCameraGraphFactory$lambda$0(this.f$0, (CameraGraph.Config) obj);
            }
        };
        this.closingCameraJobs = new ArrayList();
        Set mutableSet = CollectionsKt.toMutableSet(controls);
        mutableSet.add(camera2CameraControl);
        this.allControls = mutableSet;
    }

    public final SessionProcessor getSessionProcessor$camera_camera2() {
        synchronized (this.lock) {
        }
        return null;
    }

    public final void setSessionProcessor$camera_camera2(SessionProcessor sessionProcessor) {
        synchronized (this.lock) {
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph defaultCameraGraphFactory$lambda$0(UseCaseManager useCaseManager, CameraGraph.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return useCaseManager.cameraPipe.createCameraGraph(config);
    }

    public final UseCaseCamera getCamera() {
        UseCaseCameraComponent useCaseCameraComponent = this._activeComponent;
        if (useCaseCameraComponent != null) {
            return useCaseCameraComponent.getUseCaseCamera();
        }
        return null;
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean z) {
        synchronized (this.lock) {
            try {
                this.shouldCreateCameraGraphImmediately = z;
                if (z) {
                    this.deferredUseCaseCameraConfig = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        CameraGraph.Config cameraGraphConfig;
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            cameraGraphConfig = useCaseCameraConfig != null ? useCaseCameraConfig.getCameraGraphConfig() : null;
        }
        return cameraGraphConfig;
    }

    public final void attach(List useCases) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        synchronized (this.lock) {
            if (useCases.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Attach [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Attaching " + useCases + " from " + this);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : useCases) {
                if (!this.attachedUseCases.contains((UseCase) obj)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                ((UseCase) obj2).onSessionStart();
            }
            if (this.attachedUseCases.addAll(useCases) && !addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                updateZslDisabledByUseCaseConfigStatus();
                this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                refreshAttachedUseCases(this.attachedUseCases);
            }
            if (!this.shouldCreateCameraGraphImmediately) {
                this.pendingUseCasesToNotifyCameraControlReady.addAll(arrayList);
            } else {
                int size2 = arrayList.size();
                while (i < size2) {
                    Object obj3 = arrayList.get(i);
                    i++;
                    ((UseCase) obj3).onCameraControlReady();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void detach(List useCases) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        synchronized (this.lock) {
            if (useCases.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Detaching [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Detaching " + useCases + " from " + this);
            }
            this.activeUseCases.removeAll(useCases);
            Iterator it = useCases.iterator();
            while (it.hasNext()) {
                UseCase useCase = (UseCase) it.next();
                if (this.attachedUseCases.contains(useCase)) {
                    useCase.onSessionStop();
                }
            }
            if (this.attachedUseCases.removeAll(useCases)) {
                if (addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                    return;
                }
                if (this.attachedUseCases.isEmpty()) {
                    this.zslControl.setZslDisabledByUserCaseConfig(false);
                    this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.emptyList());
                } else {
                    updateZslDisabledByUseCaseConfigStatus();
                    this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                }
                refreshAttachedUseCases(this.attachedUseCases);
            }
            this.pendingUseCasesToNotifyCameraControlReady.removeAll(useCases);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void activate(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.add(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void deactivate(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.remove(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void update(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void reset(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshAttachedUseCases(this.attachedUseCases);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setPrimary(boolean z) {
        synchronized (this.lock) {
            this.isPrimary = z;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Unit setActiveResumeMode(boolean z) {
        Unit unit;
        synchronized (this.lock) {
            this.activeResumeEnabled = z;
            UseCaseCamera camera = getCamera();
            if (camera != null) {
                camera.setActiveResumeMode(z);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
        }
        return unit;
    }

    public final Object close(Continuation continuation) {
        List list;
        synchronized (this.lock) {
            closeCurrentUseCases();
            this.meteringRepeating.onUnbind();
            list = CollectionsKt.toList(this.closingCameraJobs);
        }
        Object objJoinAll = AwaitKt.joinAll(list, continuation);
        return objJoinAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoinAll : Unit.INSTANCE;
    }

    public String toString() {
        return "UseCaseManager<" + this.cameraGraphConfigProvider + '>';
    }

    private final void refreshRunningUseCases() {
        if (this.attachedUseCases.isEmpty()) {
            return;
        }
        Set runningUseCases = getRunningUseCases();
        if (shouldAddRepeatingUseCase(runningUseCases)) {
            addRepeatingUseCase();
        } else if (shouldRemoveRepeatingUseCase(runningUseCases)) {
            removeRepeatingUseCase();
        } else {
            updateRunningUseCases(runningUseCases);
        }
    }

    private final void updateRunningUseCases(Set set) {
        UseCaseCamera camera = getCamera();
        if (camera != null) {
            camera.updateRepeatingRequestAsync(this.isPrimary, set);
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                if (useCaseCameraControl instanceof RunningUseCasesChangeListener) {
                    ((RunningUseCasesChangeListener) useCaseCameraControl).onRunningUseCasesChanged(set);
                }
            }
        }
    }

    private final void refreshAttachedUseCases(Set set) {
        closeCurrentUseCases();
        List list = CollectionsKt.toList(set);
        if (list.isEmpty()) {
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                useCaseCameraControl.setRequestControl(null);
                useCaseCameraControl.reset();
            }
            return;
        }
        if (!this.shouldCreateCameraGraphImmediately) {
            Iterator it = this.allControls.iterator();
            while (it.hasNext()) {
                ((UseCaseCameraControl) it.next()).setRequestControl(null);
            }
        }
        GraphStateToCameraStateAdapter graphStateToCameraStateAdapter = new GraphStateToCameraStateAdapter(this.cameraStateAdapter);
        getSessionProcessor$camera_camera2();
        tryResumeUseCaseManager(createUseCaseCameraConfig$camera_camera2(new SessionConfigAdapter(list, this.isPrimary), graphStateToCameraStateAdapter, false));
    }

    public final UseCaseCameraConfig createUseCaseCameraConfig$camera_camera2(SessionConfigAdapter sessionConfigAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, boolean z) {
        Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
        Intrinsics.checkNotNullParameter(graphStateToCameraStateAdapter, "graphStateToCameraStateAdapter");
        UseCaseCameraConfig.Companion companion = UseCaseCameraConfig.Companion;
        CameraGraphConfigProvider cameraGraphConfigProvider = this.cameraGraphConfigProvider;
        Function1 function1 = this.defaultCameraGraphFactory;
        getSessionProcessor$camera_camera2();
        return companion.create(sessionConfigAdapter, cameraGraphConfigProvider, function1, graphStateToCameraStateAdapter, null, z);
    }

    private final void closeCurrentUseCases() {
        final Job jobClose;
        UseCaseCamera camera = getCamera();
        this._activeComponent = null;
        this.cameraCoordinator.removePendingCameraInfo((CameraInfo) this.cameraInfoInternal.get());
        if (camera != null && (jobClose = camera.close()) != null) {
            this.closingCameraJobs.add(jobClose);
            jobClose.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UseCaseManager.closeCurrentUseCases$lambda$0$0$0(this.f$0, jobClose, (Throwable) obj);
                }
            });
        }
        getSessionProcessor$camera_camera2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit closeCurrentUseCases$lambda$0$0$0(UseCaseManager useCaseManager, Job job, Throwable th) {
        synchronized (useCaseManager.lock) {
            useCaseManager.closingCameraJobs.remove(job);
        }
        return Unit.INSTANCE;
    }

    private final void tryResumeUseCaseManager(UseCaseCameraConfig useCaseCameraConfig) {
        if (!this.shouldCreateCameraGraphImmediately) {
            this.deferredUseCaseCameraConfig = useCaseCameraConfig;
            this.cameraCoordinator.addPendingCameraInfo((CameraInfo) this.cameraInfoInternal.get());
        } else {
            beginComponentCreation(useCaseCameraConfig);
        }
    }

    public final void resumeDeferredComponentCreation$camera_camera2(final CameraGraph cameraGraph) {
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            if (useCaseCameraConfig == null) {
                throw new IllegalStateException("Required value was null.");
            }
            beginComponentCreation(UseCaseCameraConfig.copy$default(useCaseCameraConfig, new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UseCaseManager.resumeDeferredComponentCreation$lambda$0$0(cameraGraph, (CameraGraph.Config) obj);
                }
            }, null, null, null, null, 30, null));
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void beginComponentCreation(UseCaseCameraConfig useCaseCameraConfig) {
        this._activeComponent = this.builder.config(useCaseCameraConfig).build();
        UseCaseCamera camera = getCamera();
        if (camera == null) {
            throw new IllegalStateException("Required value was null.");
        }
        camera.start();
        Iterator it = this.allControls.iterator();
        while (it.hasNext()) {
            ((UseCaseCameraControl) it.next()).setRequestControl(camera.getRequestControl());
        }
        camera.setActiveResumeMode(this.activeResumeEnabled);
        updateRunningUseCases(getRunningUseCases());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Notifying " + this.pendingUseCasesToNotifyCameraControlReady + " camera control ready");
        }
        Iterator it2 = this.pendingUseCasesToNotifyCameraControlReady.iterator();
        while (it2.hasNext()) {
            ((UseCase) it2.next()).onCameraControlReady();
        }
        this.pendingUseCasesToNotifyCameraControlReady.clear();
    }

    private final Set getRunningUseCases() {
        return CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases);
    }

    private final boolean addOrRemoveRepeatingUseCase(Set set) {
        if (shouldAddRepeatingUseCase(set)) {
            addRepeatingUseCase();
            return true;
        }
        if (!shouldRemoveRepeatingUseCase(set)) {
            return false;
        }
        removeRepeatingUseCase();
        return true;
    }

    private final boolean isMeteringRepeatingRequired(Set set) {
        if (!this.cameraXConfig.isRepeatingStreamForced()) {
            return false;
        }
        if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set) || !set.isEmpty()) {
            Iterator it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                UseCase useCase = (UseCase) it.next();
                if (!Intrinsics.areEqual(useCase, this.meteringRepeating)) {
                    List surfaces = useCase.getSessionConfig().getSurfaces();
                    Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
                    if (!surfaces.isEmpty()) {
                        Set set2 = this.attachedUseCases;
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : set2) {
                            if (!Intrinsics.areEqual((UseCase) obj, this.meteringRepeating)) {
                                arrayList.add(obj);
                            }
                        }
                        if (!arrayList.isEmpty() && shouldForceRepeatingStream(arrayList) && isMeteringCombinationSupported(arrayList)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean shouldForceRepeatingStream(Collection collection) {
        boolean z;
        if (collection.isEmpty()) {
            return false;
        }
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        Intrinsics.checkNotNullExpressionValue(sessionConfigBuild, "build(...)");
        List surfaces = sessionConfigBuild.getRepeatingCaptureConfig().getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        List surfaces2 = sessionConfigBuild.getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces2, "getSurfaces(...)");
        if (surfaces2.isEmpty()) {
            return false;
        }
        List list = surfaces2;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.areEqual(((DeferrableSurface) it2.next()).getContainerClass(), MediaCodec.class)) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z || surfaces.isEmpty();
    }

    private final boolean shouldAddRepeatingUseCase(Set set) {
        return this.cameraXConfig.isRepeatingStreamForced() && !this.attachedUseCases.contains(this.meteringRepeating) && isMeteringRepeatingRequired(set);
    }

    private final boolean shouldRemoveRepeatingUseCase(Set set) {
        return set.contains(this.meteringRepeating) && !isMeteringRepeatingRequired(set);
    }

    private final void addRepeatingUseCase() {
        this.meteringRepeating.bindToCamera((CameraInternal) this.cameraInternal.get(), null, null, null);
        this.meteringRepeating.setupSession();
        attach(CollectionsKt.listOf(this.meteringRepeating));
        activate(this.meteringRepeating);
    }

    private final void removeRepeatingUseCase() {
        deactivate(this.meteringRepeating);
        detach(CollectionsKt.listOf(this.meteringRepeating));
        this.meteringRepeating.unbindFromCamera((CameraInternal) this.cameraInternal.get());
    }

    private final boolean isMeteringCombinationSupported(Collection collection) {
        if (this.meteringRepeating.getAttachedSurfaceResolution() == null) {
            this.meteringRepeating.setupSession();
        }
        List attachedSurfaceInfoList = getAttachedSurfaceInfoList(collection);
        if (attachedSurfaceInfoList.isEmpty()) {
            return false;
        }
        List sessionSurfacesConfigs = getSessionSurfacesConfigs(collection);
        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
        SupportedSurfaceCombination.FeatureSettings featureSettings = new SupportedSurfaceCombination.FeatureSettings(getCameraMode(), getRequiredMaxBitDepth(attachedSurfaceInfoList), UseCaseUtil.containsVideoCapture(collection), UseCaseUtil.getVideoStabilization$default(collection, null, 1, null), isUltraHdrOn(collection), false, false, false, null, false, 992, null);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(sessionSurfacesConfigs);
        arrayList.add(createMeteringRepeatingSurfaceConfig());
        Unit unit = Unit.INSTANCE;
        boolean zCheckSupported$default = SupportedSurfaceCombination.checkSupported$default(supportedSurfaceCombination, featureSettings, arrayList, null, null, null, 28, null);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Combination of " + sessionSurfacesConfigs + " + " + this.meteringRepeating + " is supported: " + zCheckSupported$default);
        }
        return zCheckSupported$default;
    }

    private final int getCameraMode() {
        synchronized (this.lock) {
            if (this.cameraCoordinator.getCameraOperatingMode() == 2) {
                return 1;
            }
            Unit unit = Unit.INSTANCE;
            return 0;
        }
    }

    private final int getRequiredMaxBitDepth(List list) {
        if (Build.VERSION.SDK_INT < 24) {
            return 8;
        }
        Iterator it = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(list, CollectionsKt.listOf(this.meteringRepeating.getCurrentConfig()), CollectionsKt.listOf((Object) 0)).entrySet().iterator();
        while (it.hasNext()) {
            if (((DynamicRange) ((Map.Entry) it.next()).getValue()).getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final List getAttachedSurfaceInfoList(Collection collection) {
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
            StreamSpec attachedStreamSpec = useCase.getAttachedStreamSpec();
            if (attachedSurfaceResolution == null || attachedStreamSpec == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid surface resolution or stream spec is found.");
                }
                arrayList.clear();
                return arrayList;
            }
            SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
            int cameraMode = getCameraMode();
            int inputFormat = useCase.getCurrentConfig().getInputFormat();
            StreamUseCase streamUseCase = useCase.getCurrentConfig().getStreamUseCase();
            Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
            SurfaceConfig surfaceConfigTransformSurfaceConfig = supportedSurfaceCombination.transformSurfaceConfig(cameraMode, inputFormat, attachedSurfaceResolution, streamUseCase);
            int inputFormat2 = useCase.getCurrentConfig().getInputFormat();
            DynamicRange dynamicRange = attachedStreamSpec.getDynamicRange();
            List captureTypes = getCaptureTypes(useCase);
            Config implementationOptions = attachedStreamSpec.getImplementationOptions();
            if (implementationOptions == null) {
                implementationOptions = MutableOptionsBundle.create();
                Intrinsics.checkNotNullExpressionValue(implementationOptions, "create(...)");
            }
            AttachedSurfaceInfo attachedSurfaceInfoCreate = AttachedSurfaceInfo.create(surfaceConfigTransformSurfaceConfig, inputFormat2, attachedSurfaceResolution, dynamicRange, captureTypes, implementationOptions, attachedStreamSpec.getSessionType(), attachedStreamSpec.getExpectedFrameRateRange(), useCase.getCurrentConfig().isStrictFrameRateRequired(), useCase.getCurrentConfig().getCustomMaxFrameRate(attachedSurfaceResolution));
            Intrinsics.checkNotNullExpressionValue(attachedSurfaceInfoCreate, "create(...)");
            arrayList.add(attachedSurfaceInfoCreate);
        }
        return arrayList;
    }

    private final List getCaptureTypes(UseCase useCase) {
        if (useCase instanceof StreamSharing) {
            UseCaseConfig currentConfig = ((StreamSharing) useCase).getCurrentConfig();
            Intrinsics.checkNotNull(currentConfig, "null cannot be cast to non-null type androidx.camera.core.streamsharing.StreamSharingConfig");
            List captureTypes = ((StreamSharingConfig) currentConfig).getCaptureTypes();
            Intrinsics.checkNotNull(captureTypes);
            return captureTypes;
        }
        return CollectionsKt.listOf(useCase.getCurrentConfig().getCaptureType());
    }

    private final boolean isUltraHdrOn(Collection collection) {
        UseCaseConfig currentConfig;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof ImageCapture) {
                arrayList.add(obj);
            }
        }
        ImageCapture imageCapture = (ImageCapture) CollectionsKt.firstOrNull((List) arrayList);
        return (imageCapture == null || (currentConfig = imageCapture.getCurrentConfig()) == null || currentConfig.getInputFormat() != 4101) ? false : true;
    }

    private final List getSessionSurfacesConfigs(Collection collection) {
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            List<DeferrableSurface> surfaces = useCase.getSessionConfig().getSurfaces();
            Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
            for (DeferrableSurface deferrableSurface : surfaces) {
                SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
                int cameraMode = getCameraMode();
                int inputFormat = useCase.getCurrentConfig().getInputFormat();
                Size prescribedSize = deferrableSurface.getPrescribedSize();
                Intrinsics.checkNotNullExpressionValue(prescribedSize, "getPrescribedSize(...)");
                StreamUseCase streamUseCase = useCase.getCurrentConfig().getStreamUseCase();
                Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
                arrayList.add(supportedSurfaceCombination.transformSurfaceConfig(cameraMode, inputFormat, prescribedSize, streamUseCase));
            }
        }
        return arrayList;
    }

    private final SurfaceConfig createMeteringRepeatingSurfaceConfig() {
        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
        int cameraMode = getCameraMode();
        int imageFormat = this.meteringRepeating.getImageFormat();
        Size attachedSurfaceResolution = this.meteringRepeating.getAttachedSurfaceResolution();
        Intrinsics.checkNotNull(attachedSurfaceResolution);
        StreamUseCase streamUseCase = this.meteringRepeating.getCurrentConfig().getStreamUseCase();
        Intrinsics.checkNotNullExpressionValue(streamUseCase, "getStreamUseCase(...)");
        return supportedSurfaceCombination.transformSurfaceConfig(cameraMode, imageFormat, attachedSurfaceResolution, streamUseCase);
    }

    private final void updateZslDisabledByUseCaseConfigStatus() {
        Set set = this.attachedUseCases;
        boolean z = false;
        if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set) || !set.isEmpty()) {
            Iterator it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((UseCase) it.next()).getCurrentConfig().isZslDisabled(false)) {
                    z = true;
                    break;
                }
            }
        }
        this.zslControl.setZslDisabledByUserCaseConfig(z);
    }
}
