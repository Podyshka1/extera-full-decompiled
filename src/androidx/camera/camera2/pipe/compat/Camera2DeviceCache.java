package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import p022j$.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2DeviceCache {
    private final Map camera2DeviceSetupWrapperCache;
    private final Map cameraDeviceSetupCache;
    private final Lazy cameraDeviceSetupCompatFactory$delegate;
    private final Provider cameraDeviceSetupCompatFactoryProvider;
    private final CameraErrorListener cameraErrorListener;
    private final Flow cameraIds;
    private final Provider cameraManager;
    private Set concurrentCameras;
    private final Context context;
    private final Object lock;
    private final int minimumCameraCount;
    private List openableCameras;
    private final CoroutineScope scope;
    private final Threads threads;

    public Camera2DeviceCache(Provider cameraManager, Threads threads, Context context, PackageManager packageManager, CameraErrorListener cameraErrorListener, Provider cameraDeviceSetupCompatFactoryProvider, CameraPipeLifetime cameraPipeLifetime, Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageManager, "packageManager");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(cameraDeviceSetupCompatFactoryProvider, "cameraDeviceSetupCompatFactoryProvider");
        Intrinsics.checkNotNullParameter(cameraPipeLifetime, "cameraPipeLifetime");
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        this.cameraManager = cameraManager;
        this.threads = threads;
        this.context = context;
        this.cameraErrorListener = cameraErrorListener;
        this.cameraDeviceSetupCompatFactoryProvider = cameraDeviceSetupCompatFactoryProvider;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher()).plus(new CoroutineName("Camera2DeviceCache")));
        this.scope = CoroutineScope;
        this.lock = new Object();
        this.cameraDeviceSetupCache = new LinkedHashMap();
        this.camera2DeviceSetupWrapperCache = new LinkedHashMap();
        this.minimumCameraCount = estimateMinInternalCameraCount(packageManager);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Camera2DeviceCache: Expected minimum camera count = " + this.minimumCameraCount);
        }
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Runnable() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Camera2DeviceCache._init_$lambda$1(this.f$0);
            }
        });
        this.cameraIds = FlowKt.shareIn(FlowKt.distinctUntilChanged(createCameraIdListFlow()), CoroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.Companion, 0L, 0L, 3, null), 1);
        this.cameraDeviceSetupCompatFactory$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2DeviceCache.cameraDeviceSetupCompatFactory_delegate$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(Camera2DeviceCache camera2DeviceCache) {
        CoroutineScopeKt.cancel$default(camera2DeviceCache.scope, null, 1, null);
    }

    public final Flow getCameraIds() {
        return this.cameraIds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraDeviceSetupCompatFactory getCameraDeviceSetupCompatFactory() {
        return (CameraDeviceSetupCompatFactory) this.cameraDeviceSetupCompatFactory$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraDeviceSetupCompatFactory cameraDeviceSetupCompatFactory_delegate$lambda$0(Camera2DeviceCache camera2DeviceCache) {
        return (CameraDeviceSetupCompatFactory) camera2DeviceCache.cameraDeviceSetupCompatFactoryProvider.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: getOrInitializeDeviceSetupCompat-0r8Bogc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1828getOrInitializeDeviceSetupCompat0r8Bogc(String str, Continuation continuation) {
        Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 camera2DeviceCache$getOrInitializeDeviceSetupCompat$1;
        Deferred deferred;
        if (continuation instanceof Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1) {
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 = (Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1) continuation;
            int i = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1(this, continuation);
            }
        }
        Object objAwait = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            if (Build.VERSION.SDK_INT < 35) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    Map map = this.cameraDeviceSetupCache;
                    CameraId cameraIdM1602boximpl = CameraId.m1602boximpl(str);
                    Object objAsync$default = map.get(cameraIdM1602boximpl);
                    if (objAsync$default == null) {
                        objAsync$default = BuildersKt__Builders_commonKt.async$default(this.scope, this.threads.getBackgroundDispatcher(), null, new C0207xd9542b25(str, this, null), 2, null);
                        map.put(cameraIdM1602boximpl, objAsync$default);
                    }
                    deferred = (Deferred) objAsync$default;
                } catch (Throwable th) {
                    throw th;
                }
            }
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$0 = str;
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$1 = deferred;
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label = 1;
            objAwait = deferred.await(camera2DeviceCache$getOrInitializeDeviceSetupCompat$1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Deferred deferred2 = (Deferred) camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$1;
            String str2 = (String) camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$0;
            ResultKt.throwOnFailure(objAwait);
            deferred = deferred2;
            str = str2;
        }
        CameraDeviceSetupCompat cameraDeviceSetupCompat = (CameraDeviceSetupCompat) objAwait;
        if (cameraDeviceSetupCompat != null) {
            return cameraDeviceSetupCompat;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Removing null CameraDeviceSetupCompat from cache for " + ((Object) CameraId.m1607toStringimpl(str)));
        }
        synchronized (this.lock) {
            Map.EL.remove(this.cameraDeviceSetupCache, CameraId.m1602boximpl(str), deferred);
        }
        return cameraDeviceSetupCompat;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: getOrInitializeDeviceSetupWrapper-0r8Bogc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1829getOrInitializeDeviceSetupWrapper0r8Bogc(String str, Continuation continuation) {
        Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1;
        Deferred deferred;
        if (continuation instanceof Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1) {
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 = (Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1) continuation;
            int i = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(this, continuation);
            }
        }
        Object objAwait = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            synchronized (this.lock) {
                try {
                    java.util.Map map = this.camera2DeviceSetupWrapperCache;
                    CameraId cameraIdM1602boximpl = CameraId.m1602boximpl(str);
                    Object objAsync$default = map.get(cameraIdM1602boximpl);
                    if (objAsync$default == null) {
                        objAsync$default = BuildersKt__Builders_commonKt.async$default(this.scope, this.threads.getBackgroundDispatcher(), null, new C0208xe727c31a(str, this, null), 2, null);
                        map.put(cameraIdM1602boximpl, objAsync$default);
                    }
                    deferred = (Deferred) objAsync$default;
                } catch (Throwable th) {
                    throw th;
                }
            }
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$0 = str;
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$1 = deferred;
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label = 1;
            objAwait = deferred.await(camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Deferred deferred2 = (Deferred) camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$1;
            String str2 = (String) camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$0;
            ResultKt.throwOnFailure(objAwait);
            deferred = deferred2;
            str = str2;
        }
        Camera2DeviceSetupWrapper camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objAwait;
        if (camera2DeviceSetupWrapper != null) {
            return camera2DeviceSetupWrapper;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Removing null camera2DeviceSetupWrapper from cache for " + ((Object) CameraId.m1607toStringimpl(str)));
        }
        synchronized (this.lock) {
            Map.EL.remove(this.camera2DeviceSetupWrapperCache, CameraId.m1602boximpl(str), deferred);
        }
        return camera2DeviceSetupWrapper;
    }

    public final List awaitCameraIds() {
        List list;
        synchronized (this.lock) {
            list = this.openableCameras;
        }
        return list != null ? list : readCameraIds();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1 */
    static final class C02051 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        int label;

        C02051(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C02051 c02051 = Camera2DeviceCache.this.new C02051(continuation);
            c02051.L$0 = obj;
            return c02051;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((C02051) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$callback$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List list;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                final Camera2DeviceCache camera2DeviceCache = Camera2DeviceCache.this;
                final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$callback$1
                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAvailable(String cameraId) {
                        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                        camera2DeviceCache.onCameraAvailabilityChanged(producerScope, cameraId, true);
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraUnavailable(String cameraId) {
                        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                        camera2DeviceCache.onCameraAvailabilityChanged(producerScope, cameraId, false);
                    }
                };
                final CameraManager cameraManager = (CameraManager) Camera2DeviceCache.this.cameraManager.get();
                cameraManager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, Camera2DeviceCache.this.threads.getCamera2Handler());
                Object obj2 = Camera2DeviceCache.this.lock;
                Camera2DeviceCache camera2DeviceCache2 = Camera2DeviceCache.this;
                synchronized (obj2) {
                    list = camera2DeviceCache2.openableCameras;
                }
                if (list != null) {
                    Camera2DeviceCache.this.sendCameraIdList(producerScope, list);
                } else {
                    List cameraIds = Camera2DeviceCache.this.readCameraIds();
                    if (cameraIds != null) {
                        Camera2DeviceCache.this.sendCameraIdList(producerScope, cameraIds);
                    }
                }
                Function0 function0 = new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Camera2DeviceCache.C02051.invokeSuspend$lambda$1(cameraManager, r1);
                    }
                };
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1(CameraManager cameraManager, Camera2DeviceCache$createCameraIdListFlow$1$callback$1 camera2DeviceCache$createCameraIdListFlow$1$callback$1) {
            cameraManager.unregisterAvailabilityCallback(camera2DeviceCache$createCameraIdListFlow$1$callback$1);
            return Unit.INSTANCE;
        }
    }

    private final Flow createCameraIdListFlow() {
        return FlowKt.callbackFlow(new C02051(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCameraAvailabilityChanged(ProducerScope producerScope, String str, boolean z) {
        List list;
        synchronized (this.lock) {
            list = this.openableCameras;
        }
        List cameraIds = null;
        if (z) {
            if (list != null) {
                List list2 = list;
                if ((list2 instanceof Collection) && list2.isEmpty()) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    }
                    cameraIds = readCameraIds();
                } else {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.areEqual(((CameraId) it.next()).m1608unboximpl(), str)) {
                            break;
                        }
                    }
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "New camera " + str + " detected");
                    }
                    cameraIds = readCameraIds();
                }
            }
        } else {
            if (z) {
                throw new NoWhenBranchMatchedException();
            }
            if (list != null) {
                List list3 = list;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.areEqual(((CameraId) it2.next()).m1608unboximpl(), str)) {
                            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                                android.util.Log.i("CXCP", "Unavailable camera " + str + " detected");
                            }
                            cameraIds = readCameraIds();
                        }
                    }
                }
            } else {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                }
                cameraIds = readCameraIds();
            }
        }
        List updatedCameraIds = getUpdatedCameraIds(list, cameraIds);
        if (updatedCameraIds != null) {
            sendCameraIdList(producerScope, updatedCameraIds);
        }
    }

    private final List getUpdatedCameraIds(List list, List list2) {
        return (list2 == null || !(isValidCameraIds(list2) || list == null)) ? list : list2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendCameraIdList(ProducerScope producerScope, List list) {
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Emitting camera ID list: " + list);
        }
        Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, list);
        if (objTrySendBlocking instanceof ChannelResult.Failed) {
            ChannelResult.m3676exceptionOrNullimpl(objTrySendBlocking);
            if (log.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to send camera ID list: " + list + '!');
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List readCameraIds() {
        try {
            String[] cameraIdList = ((CameraManager) this.cameraManager.get()).getCameraIdList();
            Intrinsics.checkNotNullExpressionValue(cameraIdList, "getCameraIdList(...)");
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                Intrinsics.checkNotNull(str);
                String strM1603constructorimpl = CameraId.m1603constructorimpl(str);
                CameraId cameraIdM1602boximpl = strM1603constructorimpl != null ? CameraId.m1602boximpl(strM1603constructorimpl) : null;
                if (cameraIdM1602boximpl != null) {
                    arrayList.add(cameraIdM1602boximpl);
                }
            }
            if (isValidCameraIds(arrayList)) {
                synchronized (this.lock) {
                    this.openableCameras = arrayList;
                    Unit unit = Unit.INSTANCE;
                }
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Loaded CameraIdList " + arrayList);
                    return arrayList;
                }
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to query camera ID list: Invalid list returned: " + arrayList + '.');
            }
            return arrayList;
        } catch (CameraAccessException e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!", e);
            }
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!Unexpected ArrayIndexOutOfBoundsException thrown by framework.", e2);
            }
            return null;
        } catch (NullPointerException e3) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!Null was returned by framework.", e3);
            }
            return null;
        }
    }

    private final int estimateMinInternalCameraCount(PackageManager packageManager) {
        boolean zHasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
        return packageManager.hasSystemFeature("android.hardware.camera.front") ? (zHasSystemFeature ? 1 : 0) + 1 : zHasSystemFeature ? 1 : 0;
    }

    private final boolean isValidCameraIds(List list) {
        return list.size() >= this.minimumCameraCount;
    }

    public final Set awaitConcurrentCameraIds() {
        Set set;
        if (Build.VERSION.SDK_INT < 30) {
            return SetsKt.emptySet();
        }
        synchronized (this.lock) {
            set = this.concurrentCameras;
        }
        if (set != null && !set.isEmpty()) {
            return set;
        }
        CameraManager cameraManager = (CameraManager) this.cameraManager.get();
        try {
            Intrinsics.checkNotNull(cameraManager);
            Set<Set> concurrentCameraIds = Api30Compat.getConcurrentCameraIds(cameraManager);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Loaded ConcurrentCameraIdsSet " + concurrentCameraIds);
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(concurrentCameraIds, 10));
            for (Set set2 : concurrentCameraIds) {
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set2, 10));
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(CameraId.m1602boximpl(CameraId.m1603constructorimpl((String) it.next())));
                }
                arrayList.add(CollectionsKt.toSet(arrayList2));
            }
            return CollectionsKt.toSet(arrayList);
        } catch (CameraAccessException e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w("CXCP", "Failed to query CameraManager#getConcurrentStreamingCameraIds", e);
            return null;
        }
    }

    public final void shutdown() {
        CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
    }
}
