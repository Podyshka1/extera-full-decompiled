package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import javax.inject.Provider;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraStatusMonitor implements CameraStatusMonitor {
    private final MutableStateFlow _cameraAvailability;
    private final MutableSharedFlow _cameraPriorities;
    private final StateFlow cameraAvailability;
    private final String cameraId;
    private final SharedFlow cameraPriorities;
    private final Flow cameraStatus;
    private final Job cameraStatusJob;
    private final AtomicBoolean closed;
    private final CameraManager manager;
    private final CoroutineScope scope;
    private final Threads threads;

    public /* synthetic */ Camera2CameraStatusMonitor(Provider provider, Threads threads, String str, Job job, DefaultConstructorMarker defaultConstructorMarker) {
        this(provider, threads, str, job);
    }

    private Camera2CameraStatusMonitor(Provider cameraManager, Threads threads, String cameraId, Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        this.threads = threads;
        this.cameraId = cameraId;
        this.manager = (CameraManager) cameraManager.get();
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-CameraStatusMonitor"))));
        this.scope = CoroutineScope;
        this.closed = AtomicFU.atomic(false);
        MutableStateFlow MutableStateFlow = StateFlowKt.MutableStateFlow(CameraStatusMonitor.CameraStatus.Unknown.INSTANCE);
        this._cameraAvailability = MutableStateFlow;
        this.cameraAvailability = FlowKt.asStateFlow(MutableStateFlow);
        MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._cameraPriorities = mutableSharedFlowMutableSharedFlow$default;
        this.cameraPriorities = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.cameraStatus = cameraStatusFlow();
        this.cameraStatusJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new Camera2CameraStatusMonitor$cameraStatusJob$1(this, null), 3, null);
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public StateFlow getCameraAvailability() {
        return this.cameraAvailability;
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public SharedFlow getCameraPriorities() {
        return this.cameraPriorities;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1 */
    static final class C02001 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        int label;

        C02001(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C02001 c02001 = Camera2CameraStatusMonitor.this.new C02001(continuation);
            c02001.L$0 = obj;
            return c02001;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((C02001) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                final Camera2CameraStatusMonitor camera2CameraStatusMonitor = Camera2CameraStatusMonitor.this;
                final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1
                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAccessPrioritiesChanged() {
                        Log log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Camera access priorities have changed");
                        }
                        Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged.INSTANCE);
                        if (objTrySendBlocking instanceof ChannelResult.Failed) {
                            ChannelResult.m3676exceptionOrNullimpl(objTrySendBlocking);
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to emit CameraPrioritiesChanged");
                            }
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAvailable(String cameraId) {
                        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                        if (Intrinsics.areEqual(cameraId, camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Camera " + cameraId + " has become available");
                            }
                            Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, new CameraStatusMonitor.CameraStatus.CameraAvailable(CameraId.m1603constructorimpl(cameraId), null));
                            if (objTrySendBlocking instanceof ChannelResult.Failed) {
                                ChannelResult.m3676exceptionOrNullimpl(objTrySendBlocking);
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to emit CameraAvailable(" + cameraId + ')');
                                }
                            }
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraUnavailable(String cameraId) {
                        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                        if (Intrinsics.areEqual(cameraId, camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Camera " + cameraId + " has become unavailable");
                            }
                            Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, new CameraStatusMonitor.CameraStatus.CameraUnavailable(CameraId.m1603constructorimpl(cameraId), null));
                            if (objTrySendBlocking instanceof ChannelResult.Failed) {
                                ChannelResult.m3676exceptionOrNullimpl(objTrySendBlocking);
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to emit CameraUnavailable(" + cameraId + ')');
                                }
                            }
                        }
                    }
                };
                if (Build.VERSION.SDK_INT >= 28) {
                    CameraManager cameraManager = Camera2CameraStatusMonitor.this.manager;
                    Intrinsics.checkNotNullExpressionValue(cameraManager, "access$getManager$p(...)");
                    Api28Compat.registerAvailabilityCallback(cameraManager, Camera2CameraStatusMonitor.this.threads.getLightweightExecutor(), r1);
                } else {
                    Camera2CameraStatusMonitor.this.manager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, Camera2CameraStatusMonitor.this.threads.getCamera2Handler());
                }
                final Camera2CameraStatusMonitor camera2CameraStatusMonitor2 = Camera2CameraStatusMonitor.this;
                Function0 function0 = new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Camera2CameraStatusMonitor.C02001.invokeSuspend$lambda$0(camera2CameraStatusMonitor2, r1);
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
        public static final Unit invokeSuspend$lambda$0(Camera2CameraStatusMonitor camera2CameraStatusMonitor, C0202x8e51b391 c0202x8e51b391) {
            camera2CameraStatusMonitor.manager.unregisterAvailabilityCallback(c0202x8e51b391);
            return Unit.INSTANCE;
        }
    }

    private final Flow cameraStatusFlow() {
        return FlowKt.callbackFlow(new C02001(null));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed.compareAndSet(false, true)) {
            Job.DefaultImpls.cancel$default(this.cameraStatusJob, null, 1, null);
            CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        }
    }
}
