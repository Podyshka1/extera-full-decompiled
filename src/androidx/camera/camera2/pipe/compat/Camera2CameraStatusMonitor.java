package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00160#H\u0002J\b\u0010&\u001a\u00020\u001dH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0016\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00160#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;", "cameraManager", "Ljavax/inject/Provider;", "Landroid/hardware/camera2/CameraManager;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "cameraPipeJob", "Lkotlinx/coroutines/Job;", "<init>", "(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Ljava/lang/String;", "manager", "kotlin.jvm.PlatformType", "scope", "Lkotlinx/coroutines/CoroutineScope;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", "_cameraAvailability", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;", "cameraAvailability", "Lkotlinx/coroutines/flow/StateFlow;", "getCameraAvailability", "()Lkotlinx/coroutines/flow/StateFlow;", "_cameraPriorities", "Lkotlinx/coroutines/flow/MutableSharedFlow;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraPriorities", "Lkotlinx/coroutines/flow/SharedFlow;", "getCameraPriorities", "()Lkotlinx/coroutines/flow/SharedFlow;", "cameraStatus", "Lkotlinx/coroutines/flow/Flow;", "cameraStatusJob", "cameraStatusFlow", "close", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class Camera2CameraStatusMonitor implements CameraStatusMonitor {
    private final MutableStateFlow<CameraStatusMonitor.CameraStatus> _cameraAvailability;
    private final MutableSharedFlow<Unit> _cameraPriorities;
    private final StateFlow<CameraStatusMonitor.CameraStatus> cameraAvailability;
    private final String cameraId;
    private final SharedFlow<Unit> cameraPriorities;
    private final Flow<CameraStatusMonitor.CameraStatus> cameraStatus;
    private final Job cameraStatusJob;
    private final AtomicBoolean closed;
    private final CameraManager manager;
    private final CoroutineScope scope;
    private final Threads threads;

    public /* synthetic */ Camera2CameraStatusMonitor(Provider provider, Threads threads, String str, Job job, DefaultConstructorMarker defaultConstructorMarker) {
        this(provider, threads, str, job);
    }

    private Camera2CameraStatusMonitor(Provider<CameraManager> provider, Threads threads, String str, Job job) {
        this.threads = threads;
        this.cameraId = str;
        this.manager = provider.get();
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(job).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-CameraStatusMonitor"))));
        this.scope = CoroutineScope;
        this.closed = AtomicFU.atomic(false);
        MutableStateFlow<CameraStatusMonitor.CameraStatus> MutableStateFlow = StateFlowKt.MutableStateFlow(CameraStatusMonitor.CameraStatus.Unknown.INSTANCE);
        this._cameraAvailability = MutableStateFlow;
        this.cameraAvailability = FlowKt.asStateFlow(MutableStateFlow);
        MutableSharedFlow<Unit> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._cameraPriorities = mutableSharedFlowMutableSharedFlow$default;
        this.cameraPriorities = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.cameraStatus = cameraStatusFlow();
        this.cameraStatusJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new Camera2CameraStatusMonitor$cameraStatusJob$1(this, null), 3, null);
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public StateFlow<CameraStatusMonitor.CameraStatus> getCameraAvailability() {
        return this.cameraAvailability;
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public SharedFlow<Unit> getCameraPriorities() {
        return this.cameraPriorities;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/channels/ProducerScope;", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1", m873f = "Camera2CameraStatusMonitor.kt", m874i = {}, m875l = {114}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C02021 extends SuspendLambda implements Function2<ProducerScope<? super CameraStatusMonitor.CameraStatus>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public C02021(Continuation<? super C02021> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02021 c02021 = Camera2CameraStatusMonitor.this.new C02021(continuation);
            c02021.L$0 = obj;
            return c02021;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super CameraStatusMonitor.CameraStatus> producerScope, Continuation<? super Unit> continuation) {
            return ((C02021) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                            ChannelResult.m4606exceptionOrNullimpl(objTrySendBlocking);
                            if (log.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to emit CameraPrioritiesChanged");
                            }
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAvailable(String cameraId) {
                        if (Intrinsics.areEqual(cameraId, camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Camera " + cameraId + " has become available");
                            }
                            Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, new CameraStatusMonitor.CameraStatus.CameraAvailable(CameraId.m1299constructorimpl(cameraId), null));
                            if (objTrySendBlocking instanceof ChannelResult.Failed) {
                                ChannelResult.m4606exceptionOrNullimpl(objTrySendBlocking);
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to emit CameraAvailable(" + cameraId + ')');
                                }
                            }
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraUnavailable(String cameraId) {
                        if (Intrinsics.areEqual(cameraId, camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Camera " + cameraId + " has become unavailable");
                            }
                            Object objTrySendBlocking = ChannelsKt.trySendBlocking(producerScope, new CameraStatusMonitor.CameraStatus.CameraUnavailable(CameraId.m1299constructorimpl(cameraId), null));
                            if (objTrySendBlocking instanceof ChannelResult.Failed) {
                                ChannelResult.m4606exceptionOrNullimpl(objTrySendBlocking);
                                if (log.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to emit CameraUnavailable(" + cameraId + ')');
                                }
                            }
                        }
                    }
                };
                int i2 = Build.VERSION.SDK_INT;
                Camera2CameraStatusMonitor camera2CameraStatusMonitor2 = Camera2CameraStatusMonitor.this;
                if (i2 < 28) {
                    camera2CameraStatusMonitor2.manager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, Camera2CameraStatusMonitor.this.threads.getCamera2Handler());
                } else {
                    Api28Compat.registerAvailabilityCallback(camera2CameraStatusMonitor2.manager, Camera2CameraStatusMonitor.this.threads.getLightweightExecutor(), r1);
                }
                final Camera2CameraStatusMonitor camera2CameraStatusMonitor3 = Camera2CameraStatusMonitor.this;
                Function0 function0 = new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Camera2CameraStatusMonitor.C02021.$r8$lambda$QvSZz9zGJDm3OJ9gzI7Mr43H2fA(camera2CameraStatusMonitor3, r1);
                    }
                };
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        public static Unit $r8$lambda$QvSZz9zGJDm3OJ9gzI7Mr43H2fA(Camera2CameraStatusMonitor camera2CameraStatusMonitor, C0204x8e51b391 c0204x8e51b391) {
            camera2CameraStatusMonitor.manager.unregisterAvailabilityCallback(c0204x8e51b391);
            return Unit.INSTANCE;
        }
    }

    private final Flow<CameraStatusMonitor.CameraStatus> cameraStatusFlow() {
        return FlowKt.callbackFlow(new C02021(null));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed.compareAndSet(false, true)) {
            Job.cancel$default(this.cameraStatusJob, null, 1, null);
            CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        }
    }
}
