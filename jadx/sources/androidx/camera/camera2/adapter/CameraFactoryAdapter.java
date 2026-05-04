package androidx.camera.camera2.adapter;

import android.content.Context;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraAppConfig;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.config.DaggerCameraAppComponent;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.internal.CameraCompatibilityFilter;
import androidx.camera.camera2.internal.CameraSelectionOptimizer;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.internal.StreamSpecsCalculator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraFactoryAdapter implements CameraFactory, CameraFactory.Interrogator {
    private final Lazy appComponent$delegate;
    private Set availableCameraIds;
    private final CameraSelector availableCamerasSelector;
    private final CameraCoordinatorAdapter cameraCoordinator;
    private final CameraXConfig cameraXConfig;
    private final AtomicBoolean isShutdown;
    private final Lazy lazyCameraPipe;
    private final Object lock;
    private final PipeCameraPresenceSource pipeCameraPresenceObservable;
    private final StreamSpecsCalculator streamSpecsCalculator;

    public CameraFactoryAdapter(Lazy lazyCameraPipe, final Context context, final CameraThreadConfig threadConfig, final CameraInteropStateCallbackRepository camera2InteropCallbacks, CameraSelector cameraSelector, StreamSpecsCalculator streamSpecsCalculator, CameraXConfig cameraXConfig) throws InitializationException {
        List listEmptyList;
        Intrinsics.checkNotNullParameter(lazyCameraPipe, "lazyCameraPipe");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(threadConfig, "threadConfig");
        Intrinsics.checkNotNullParameter(camera2InteropCallbacks, "camera2InteropCallbacks");
        Intrinsics.checkNotNullParameter(streamSpecsCalculator, "streamSpecsCalculator");
        Intrinsics.checkNotNullParameter(cameraXConfig, "cameraXConfig");
        this.lazyCameraPipe = lazyCameraPipe;
        this.availableCamerasSelector = cameraSelector;
        this.streamSpecsCalculator = streamSpecsCalculator;
        this.cameraXConfig = cameraXConfig;
        this.cameraCoordinator = new CameraCoordinatorAdapter((CameraPipe) lazyCameraPipe.getValue(), ((CameraPipe) lazyCameraPipe.getValue()).cameras());
        this.appComponent$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraFactoryAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraFactoryAdapter.appComponent_delegate$lambda$0(context, threadConfig, this, camera2InteropCallbacks);
            }
        });
        this.availableCameraIds = SetsKt.emptySet();
        this.lock = new Object();
        this.isShutdown = new AtomicBoolean(false);
        List listM1546awaitCameraIdsSeavPBo$default = CameraDevices.CC.m1546awaitCameraIdsSeavPBo$default(getAppComponent().getCameraDevices(), null, 1, null);
        if (listM1546awaitCameraIdsSeavPBo$default == null) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            List list = listM1546awaitCameraIdsSeavPBo$default;
            listEmptyList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                listEmptyList.add(((CameraId) it.next()).m1608unboximpl());
            }
        }
        Flow flowM1549cameraIdsFlowSeavPBo$default = CameraDevices.CC.m1549cameraIdsFlowSeavPBo$default(((CameraPipe) this.lazyCameraPipe.getValue()).cameras(), null, 1, null);
        Executor cameraExecutor = threadConfig.getCameraExecutor();
        Intrinsics.checkNotNullExpressionValue(cameraExecutor, "getCameraExecutor(...)");
        this.pipeCameraPresenceObservable = new PipeCameraPresenceSource(flowM1549cameraIdsFlowSeavPBo$default, CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(cameraExecutor)), listEmptyList, context);
        onCameraIdsUpdated(listEmptyList);
    }

    private final CameraAppComponent getAppComponent() {
        return (CameraAppComponent) this.appComponent$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraAppComponent appComponent_delegate$lambda$0(Context context, CameraThreadConfig cameraThreadConfig, CameraFactoryAdapter cameraFactoryAdapter, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("CameraFactoryAdapter#appComponent");
        SystemTimeSource systemTimeSource = new SystemTimeSource();
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = systemTimeSource.mo1888nowvQl9yQU();
        CameraAppComponent cameraAppComponentBuild = DaggerCameraAppComponent.builder().config(new CameraAppConfig(context, cameraThreadConfig, (CameraPipe) cameraFactoryAdapter.lazyCameraPipe.getValue(), cameraInteropStateCallbackRepository, cameraFactoryAdapter.cameraCoordinator, cameraFactoryAdapter.cameraXConfig)).build();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            String str = Camera2Logger.TRUNCATED_TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Created CameraFactoryAdapter in ");
            String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m1880constructorimpl(systemTimeSource.mo1888nowvQl9yQU() - jMo1888nowvQl9yQU) / 1000000.0d)}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            sb.append(str2);
            Log.d(str, sb.toString());
        }
        Trace.endSection();
        return cameraAppComponentBuild;
    }

    @Override // androidx.camera.core.impl.CameraPresenceMonitor
    public void onCameraIdsUpdated(List cameraIds) throws InitializationException {
        Intrinsics.checkNotNullParameter(cameraIds, "cameraIds");
        if (this.isShutdown.get()) {
            return;
        }
        Set setCalculateAvailableCameraIds = calculateAvailableCameraIds(cameraIds);
        synchronized (this.lock) {
            try {
                if (this.isShutdown.get()) {
                    return;
                }
                if (Intrinsics.areEqual(this.availableCameraIds, setCalculateAvailableCameraIds)) {
                    return;
                }
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Updated available camera list: " + this.availableCameraIds + " -> " + setCalculateAvailableCameraIds);
                }
                this.availableCameraIds = setCalculateAvailableCameraIds;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory.Interrogator
    public List getAvailableCameraIds(List cameraIds) {
        Intrinsics.checkNotNullParameter(cameraIds, "cameraIds");
        if (this.isShutdown.get()) {
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.toList(calculateAvailableCameraIds(cameraIds));
    }

    private final Set calculateAvailableCameraIds(List list) throws InitializationException {
        return new LinkedHashSet(CameraCompatibilityFilter.getBackwardCompatibleCameraIds(getAppComponent().getCameraDevices(), CameraSelectionOptimizer.Companion.getSelectedAvailableCameraIds(getAppComponent(), this.availableCamerasSelector, CollectionsKt.toList(list), this.streamSpecsCalculator)));
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public CameraInternal getCamera(String cameraId) throws CameraUpdateException {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (this.isShutdown.get()) {
            throw new CameraUpdateException("CameraFactory has been shut down.");
        }
        return getAppComponent().cameraBuilder().config(new CameraConfig(CameraId.m1603constructorimpl(cameraId), null)).streamSpecsCalculator(this.streamSpecsCalculator).build().getCameraInternal();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Set getAvailableCameraIds() {
        synchronized (this.lock) {
            if (this.isShutdown.get()) {
                return SetsKt.emptySet();
            }
            return new LinkedHashSet(this.availableCameraIds);
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public CameraCoordinator getCameraCoordinator() {
        return this.cameraCoordinator;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Object getCameraManager() {
        return getAppComponent();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Observable getCameraPresenceSource() {
        return this.pipeCameraPresenceObservable;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public void shutdown() {
        if (this.isShutdown.getAndSet(true)) {
            return;
        }
        this.cameraCoordinator.shutdown();
        this.pipeCameraPresenceObservable.stopMonitoring();
        if (this.lazyCameraPipe.isInitialized()) {
            ((CameraPipe) this.lazyCameraPipe.getValue()).shutdown();
        }
    }
}
