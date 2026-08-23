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
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
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
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002BG\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020 0(H\u0016J\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020 0(2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020 0(H\u0016J\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020 0(H\u0002J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020 H\u0016J\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0016J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020\"H\u0016J\u0014\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030(02H\u0016J\b\u00104\u001a\u00020&H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Landroidx/camera/camera2/adapter/CameraFactoryAdapter;", "Landroidx/camera/core/impl/CameraFactory;", "Landroidx/camera/core/impl/CameraFactory$Interrogator;", "lazyCameraPipe", "Lkotlin/Lazy;", "Landroidx/camera/camera2/pipe/CameraPipe;", "context", "Landroid/content/Context;", "threadConfig", "Landroidx/camera/core/impl/CameraThreadConfig;", "camera2InteropCallbacks", "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;", "availableCamerasSelector", "Landroidx/camera/core/CameraSelector;", "streamSpecsCalculator", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "cameraXConfig", "Landroidx/camera/core/CameraXConfig;", "<init>", "(Lkotlin/Lazy;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/CameraXConfig;)V", "cameraCoordinator", "Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;", "pipeCameraPresenceObservable", "Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;", "appComponent", "Landroidx/camera/camera2/config/CameraAppComponent;", "getAppComponent", "()Landroidx/camera/camera2/config/CameraAppComponent;", "appComponent$delegate", "Lkotlin/Lazy;", "availableCameraIds", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "lock", _UrlKt.FRAGMENT_ENCODE_SET, "isShutdown", "Ljava/util/concurrent/atomic/AtomicBoolean;", "onCameraIdsUpdated", _UrlKt.FRAGMENT_ENCODE_SET, "cameraIds", _UrlKt.FRAGMENT_ENCODE_SET, "getAvailableCameraIds", "calculateAvailableCameraIds", "getCamera", "Landroidx/camera/core/impl/CameraInternal;", "cameraId", "getCameraCoordinator", "Landroidx/camera/core/concurrent/CameraCoordinator;", "getCameraManager", "getCameraPresenceSource", "Landroidx/camera/core/impl/Observable;", "Landroidx/camera/core/CameraIdentifier;", "shutdown", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraFactoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraFactoryAdapter.kt\nandroidx/camera/camera2/adapter/CameraFactoryAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 4 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 6 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n*L\n1#1,202:1\n1563#2:203\n1634#2,3:204\n85#3,4:207\n85#3,2:216\n88#3:223\n71#4,4:211\n78#4,4:224\n70#5:215\n83#5:218\n70#5:219\n74#5,2:221\n29#6:220\n*S KotlinDebug\n*F\n+ 1 CameraFactoryAdapter.kt\nandroidx/camera/camera2/adapter/CameraFactoryAdapter\n*L\n93#1:203\n93#1:204,3\n119#1:207,4\n81#1:216,2\n81#1:223\n65#1:211,4\n84#1:224,4\n67#1:215\n82#1:218\n82#1:219\n82#1:221,2\n82#1:220\n*E\n"})
public final class CameraFactoryAdapter implements CameraFactory, CameraFactory.Interrogator {

    /* JADX INFO: renamed from: appComponent$delegate, reason: from kotlin metadata */
    private final Lazy appComponent;
    private final CameraSelector availableCamerasSelector;
    private final CameraCoordinatorAdapter cameraCoordinator;
    private final CameraXConfig cameraXConfig;
    private final Lazy<CameraPipe> lazyCameraPipe;
    private final PipeCameraPresenceSource pipeCameraPresenceObservable;
    private final StreamSpecsCalculator streamSpecsCalculator;
    private Set<String> availableCameraIds = SetsKt.emptySet();
    private final Object lock = new Object();
    private final AtomicBoolean isShutdown = new AtomicBoolean(false);

    /* JADX WARN: Multi-variable type inference failed */
    public CameraFactoryAdapter(Lazy<? extends CameraPipe> lazy, final Context context, final CameraThreadConfig cameraThreadConfig, final CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, CameraSelector cameraSelector, StreamSpecsCalculator streamSpecsCalculator, CameraXConfig cameraXConfig) {
        List<String> listEmptyList;
        this.lazyCameraPipe = lazy;
        this.availableCamerasSelector = cameraSelector;
        this.streamSpecsCalculator = streamSpecsCalculator;
        this.cameraXConfig = cameraXConfig;
        this.cameraCoordinator = new CameraCoordinatorAdapter((CameraPipe) lazy.getValue(), ((CameraPipe) lazy.getValue()).cameras());
        this.appComponent = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraFactoryAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraFactoryAdapter.$r8$lambda$XdM0ky82a6o_01qy6QMeRMWkwsQ(context, cameraThreadConfig, this, cameraInteropStateCallbackRepository);
            }
        });
        List listM1148awaitCameraIdsSeavPBo$default = CameraDevices.m1148awaitCameraIdsSeavPBo$default(getAppComponent().getCameraDevices(), null, 1, null);
        if (listM1148awaitCameraIdsSeavPBo$default == null) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            List list = listM1148awaitCameraIdsSeavPBo$default;
            listEmptyList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                listEmptyList.add(((CameraId) it.next()).getValue());
            }
        }
        this.pipeCameraPresenceObservable = new PipeCameraPresenceSource(CameraDevices.m1151cameraIdsFlowSeavPBo$default(this.lazyCameraPipe.getValue().cameras(), null, 1, null), CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(cameraThreadConfig.getCameraExecutor())), listEmptyList, context);
        onCameraIdsUpdated(listEmptyList);
    }

    private final CameraAppComponent getAppComponent() {
        return (CameraAppComponent) this.appComponent.getValue();
    }

    public static CameraAppComponent $r8$lambda$XdM0ky82a6o_01qy6QMeRMWkwsQ(Context context, CameraThreadConfig cameraThreadConfig, CameraFactoryAdapter cameraFactoryAdapter, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("CameraFactoryAdapter#appComponent");
        SystemTimeSource systemTimeSource = new SystemTimeSource();
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1485nowvQl9yQU = systemTimeSource.mo1485nowvQl9yQU();
        CameraAppComponent cameraAppComponentBuild = DaggerCameraAppComponent.builder().config(new CameraAppConfig(context, cameraThreadConfig, cameraFactoryAdapter.lazyCameraPipe.getValue(), cameraInteropStateCallbackRepository, cameraFactoryAdapter.cameraCoordinator, cameraFactoryAdapter.cameraXConfig)).build();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Created CameraFactoryAdapter in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m1477constructorimpl(systemTimeSource.mo1485nowvQl9yQU() - jMo1485nowvQl9yQU) / 1000000.0d)}, 1))));
        }
        Trace.endSection();
        return cameraAppComponentBuild;
    }

    @Override // androidx.camera.core.impl.CameraPresenceMonitor
    public void onCameraIdsUpdated(List<String> cameraIds) {
        if (this.isShutdown.get()) {
            return;
        }
        Set<String> setCalculateAvailableCameraIds = calculateAvailableCameraIds(cameraIds);
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
    public List<String> getAvailableCameraIds(List<String> cameraIds) {
        if (this.isShutdown.get()) {
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.toList(calculateAvailableCameraIds(cameraIds));
    }

    private final Set<String> calculateAvailableCameraIds(List<String> cameraIds) {
        return new LinkedHashSet(CameraCompatibilityFilter.getBackwardCompatibleCameraIds(getAppComponent().getCameraDevices(), CameraSelectionOptimizer.INSTANCE.getSelectedAvailableCameraIds(getAppComponent(), this.availableCamerasSelector, CollectionsKt.toList(cameraIds), this.streamSpecsCalculator)));
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public CameraInternal getCamera(String cameraId) throws CameraUpdateException {
        if (this.isShutdown.get()) {
            throw new CameraUpdateException("CameraFactory has been shut down.");
        }
        return getAppComponent().cameraBuilder().config(new CameraConfig(CameraId.m1209constructorimpl(cameraId), null)).streamSpecsCalculator(this.streamSpecsCalculator).build().getCameraInternal();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Set<String> getAvailableCameraIds() {
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
    public Observable<List<CameraIdentifier>> getCameraPresenceSource() {
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
            this.lazyCameraPipe.getValue().shutdown();
        }
    }
}
