package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraController implements CameraController {
    public static final Companion Companion = new Companion(null);
    private static final long PRIORITIES_CHANGED_THRESHOLD_NS = DurationNs.m1880constructorimpl(200000000);
    private boolean _isForeground;
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2Quirks camera2Quirks;
    private CameraStatusMonitor.CameraStatus cameraAvailability;
    private Job cameraAvailabilityJob;
    private final CameraGraphId cameraGraphId;
    private Job cameraPrioritiesJob;
    private final CameraStatusMonitor cameraStatusMonitor;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CaptureSessionFactory captureSessionFactory;
    private final CompletableDeferred closedDeferred;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private CameraController.ControllerState controllerState;
    private VirtualCamera currentCamera;
    private Job currentCameraStateJob;
    private CaptureSessionState currentSession;
    private Map currentSurfaceMap;
    private final CameraGraph.Config graphConfig;
    private final GraphListener graphListener;
    private CameraError lastCameraError;
    private TimestampNs lastCameraPrioritiesChangedTs;
    private final Object lock;
    private Job restartJob;
    private final CoroutineScope scope;
    private final ShutdownListener shutdownListener;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final SurfaceTracker surfaceTracker;
    private final Threads threads;
    private final TimeSource timeSource;

    public interface ShutdownListener {
        void onControllerClosed(CameraController cameraController);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1 */
    static final class C01951 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01951(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Camera2CameraController.this.awaitClosed(this);
        }
    }

    public Camera2CameraController(CoroutineScope scope, Threads threads, StrictMode strictMode, CameraGraph.Config graphConfig, GraphListener graphListener, SurfaceTracker surfaceTracker, CameraStatusMonitor cameraStatusMonitor, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory, Camera2DeviceManager camera2DeviceManager, CameraSurfaceManager cameraSurfaceManager, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraGraphId cameraGraphId, ShutdownListener shutdownListener, StreamGraphImpl streamGraph, ConcurrentSessionSequencers concurrentSessionSequencers) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(surfaceTracker, "surfaceTracker");
        Intrinsics.checkNotNullParameter(cameraStatusMonitor, "cameraStatusMonitor");
        Intrinsics.checkNotNullParameter(captureSessionFactory, "captureSessionFactory");
        Intrinsics.checkNotNullParameter(captureSequenceProcessorFactory, "captureSequenceProcessorFactory");
        Intrinsics.checkNotNullParameter(camera2DeviceManager, "camera2DeviceManager");
        Intrinsics.checkNotNullParameter(cameraSurfaceManager, "cameraSurfaceManager");
        Intrinsics.checkNotNullParameter(camera2Quirks, "camera2Quirks");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        Intrinsics.checkNotNullParameter(cameraGraphId, "cameraGraphId");
        Intrinsics.checkNotNullParameter(shutdownListener, "shutdownListener");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(concurrentSessionSequencers, "concurrentSessionSequencers");
        this.scope = scope;
        this.threads = threads;
        this.strictMode = strictMode;
        this.graphConfig = graphConfig;
        this.graphListener = graphListener;
        this.surfaceTracker = surfaceTracker;
        this.cameraStatusMonitor = cameraStatusMonitor;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = captureSequenceProcessorFactory;
        this.camera2DeviceManager = camera2DeviceManager;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraGraphId = cameraGraphId;
        this.shutdownListener = shutdownListener;
        this.streamGraph = streamGraph;
        this.lock = new Object();
        this._isForeground = true;
        this.controllerState = CameraController.ControllerState.STOPPED.INSTANCE;
        this.cameraAvailability = new CameraStatusMonitor.CameraStatus.CameraUnavailable(m1814getCameraIdDz_R5H8(), null);
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = graphConfig.getConcurrentCameraGraphs$camera_camera2_pipe();
        this.concurrentSessionSequencer = concurrentCameraGraphs$camera_camera2_pipe != null ? concurrentSessionSequencers.getSequencer(getCameraGraphId(), concurrentCameraGraphs$camera_camera2_pipe) : null;
        this.closedDeferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.cameraAvailabilityJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C01931(null), 3, null);
        this.cameraPrioritiesJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C01942(null), 3, null);
    }

    public CameraGraphId getCameraGraphId() {
        return this.cameraGraphId;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String m1814getCameraIdDz_R5H8() {
        return this.graphConfig.m1575getCameraDz_R5H8();
    }

    public boolean isForeground() {
        boolean z;
        synchronized (this.lock) {
            z = this._isForeground;
        }
        return z;
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void setForeground(boolean z) {
        synchronized (this.lock) {
            this._isForeground = z;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final CameraController.ControllerState getControllerState$camera_camera2_pipe() {
        return this.controllerState;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$1 */
    static final class C01931 extends SuspendLambda implements Function2 {
        int label;

        C01931(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return Camera2CameraController.this.new C01931(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01931) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StateFlow cameraAvailability = Camera2CameraController.this.cameraStatusMonitor.getCameraAvailability();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(CameraStatusMonitor.CameraStatus cameraStatus, Continuation continuation) {
                        if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                            if (CameraId.m1605equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraAvailable) cameraStatus).m1935getCameraIdDz_R5H8(), camera2CameraController.m1814getCameraIdDz_R5H8())) {
                                camera2CameraController.onCameraStatusChanged(cameraStatus);
                            } else {
                                throw new IllegalStateException("Check failed.");
                            }
                        } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable) {
                            if (CameraId.m1605equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraUnavailable) cameraStatus).m1936getCameraIdDz_R5H8(), camera2CameraController.m1814getCameraIdDz_R5H8())) {
                                camera2CameraController.onCameraStatusChanged(cameraStatus);
                            } else {
                                throw new IllegalStateException("Check failed.");
                            }
                        }
                        return Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (cameraAvailability.collect(flowCollector, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$2 */
    static final class C01942 extends SuspendLambda implements Function2 {
        int label;

        C01942(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return Camera2CameraController.this.new C01942(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01942) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedFlow cameraPriorities = Camera2CameraController.this.cameraStatusMonitor.getCameraPriorities();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.2.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Unit unit, Continuation continuation) {
                        camera2CameraController.onCameraStatusChanged(CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged.INSTANCE);
                        return Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (cameraPriorities.collect(flowCollector, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void start() {
        synchronized (this.lock) {
            startLocked();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void tryRestart() {
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        if (Companion.m1815shouldRestartX9Wt83s$camera_camera2_pipe(this.controllerState, this.lastCameraError, this.cameraAvailability, this.lastCameraPrioritiesChangedTs, jMo1888nowvQl9yQU)) {
            long j = this.graphConfig.getFlags().getEnableRestartDelays() ? 700L : 0L;
            Job job = this.restartJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            this.restartJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C01982(j, this, null), 3, null);
            return;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + ": Not restarting. Controller state = " + getControllerState$camera_camera2_pipe() + ", last camera error = " + this.lastCameraError + ", camera availability = " + this.cameraAvailability + ", last camera priorities changed = " + this.lastCameraPrioritiesChangedTs + ", current timestamp = " + ((Object) TimestampNs.m1895toStringimpl(jMo1888nowvQl9yQU)) + '.');
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2 */
    static final class C01982 extends SuspendLambda implements Function2 {
        final /* synthetic */ long $delayMs;
        int label;
        final /* synthetic */ Camera2CameraController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01982(long j, Camera2CameraController camera2CameraController, Continuation continuation) {
            super(2, continuation);
            this.$delayMs = j;
            this.this$0 = camera2CameraController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01982(this.$delayMs, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01982) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$delayMs;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Object obj2 = this.this$0.lock;
            Camera2CameraController camera2CameraController = this.this$0;
            synchronized (obj2) {
                try {
                    if (!camera2CameraController.isClosed() && !Intrinsics.areEqual(camera2CameraController.getControllerState$camera_camera2_pipe(), CameraController.ControllerState.STOPPING.INSTANCE) && !Intrinsics.areEqual(camera2CameraController.getControllerState$camera_camera2_pipe(), CameraController.ControllerState.STOPPED.INSTANCE)) {
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Restarting " + camera2CameraController + "...");
                        }
                        camera2CameraController.surfaceTracker.registerAllSurfaces();
                        camera2CameraController.stopLocked();
                        camera2CameraController.startLocked();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startLocked() {
        Set of;
        if (isClosed()) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "Ignoring start(): " + this + " is already closed");
                return;
            }
            return;
        }
        CameraController.ControllerState controllerState = this.controllerState;
        CameraController.ControllerState.STARTED started = CameraController.ControllerState.STARTED.INSTANCE;
        if (Intrinsics.areEqual(controllerState, started)) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Ignoring start(): " + this + " is already started");
                return;
            }
            return;
        }
        this.lastCameraError = null;
        String strM1575getCameraDz_R5H8 = this.graphConfig.m1575getCameraDz_R5H8();
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = this.graphConfig.getConcurrentCameraGraphs$camera_camera2_pipe();
        if (concurrentCameraGraphs$camera_camera2_pipe == null || (of = concurrentCameraGraphs$camera_camera2_pipe.getCameraIds()) == null) {
            of = SetsKt.setOf(CameraId.m1602boximpl(strM1575getCameraDz_R5H8));
        }
        VirtualCamera virtualCameraMo1831openzDSwpeU = this.camera2DeviceManager.mo1831openzDSwpeU(strM1575getCameraDz_R5H8, CollectionsKt.toList(SetsKt.minus(of, CameraId.m1602boximpl(strM1575getCameraDz_R5H8))), this.graphListener, false, new Function1() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Camera2CameraController.startLocked$lambda$2(this.f$0, (Unit) obj));
            }
        });
        if (virtualCameraMo1831openzDSwpeU == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to start " + this + ": Open request submission failed");
                return;
            }
            return;
        }
        if (this.currentCamera != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.currentSession != null) {
            throw new IllegalStateException("Check failed.");
        }
        this.currentCamera = virtualCameraMo1831openzDSwpeU;
        CaptureSessionState captureSessionState = new CaptureSessionState(this.graphListener, this.captureSessionFactory, this.captureSequenceProcessorFactory, this.cameraSurfaceManager, this.timeSource, this.graphConfig.getFlags(), this.concurrentSessionSequencer, this.streamGraph, this.strictMode, this.threads, this.scope);
        this.currentSession = captureSessionState;
        Map map = this.currentSurfaceMap;
        if (map != null) {
            captureSessionState.configureSurfaceMap(map);
        }
        this.controllerState = started;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Started " + this);
        }
        Job job = this.currentCameraStateJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.currentCameraStateJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C01975(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean startLocked$lambda$2(Camera2CameraController camera2CameraController, Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "<unused var>");
        return camera2CameraController.isForeground();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$startLocked$5 */
    static final class C01975 extends SuspendLambda implements Function2 {
        int label;

        C01975(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return Camera2CameraController.this.new C01975(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01975) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2CameraController camera2CameraController = Camera2CameraController.this;
                this.label = 1;
                if (camera2CameraController.bindSessionToCamera(this) == coroutine_suspended) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopLocked() {
        if (isClosed()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Ignoring stop(): " + this + " is already closed");
                return;
            }
            return;
        }
        CameraController.ControllerState controllerState = this.controllerState;
        CameraController.ControllerState.STOPPING stopping = CameraController.ControllerState.STOPPING.INSTANCE;
        if (Intrinsics.areEqual(controllerState, stopping) || Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.STOPPED.INSTANCE)) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Ignoring stop(): " + this + " already stopping or stopped");
                return;
            }
            return;
        }
        VirtualCamera virtualCamera = this.currentCamera;
        CaptureSessionState captureSessionState = this.currentSession;
        this.currentCamera = null;
        this.currentSession = null;
        this.controllerState = stopping;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Stopping " + this);
        }
        detachSessionAndCamera(captureSessionState, virtualCamera);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCameraStatusChanged(CameraStatusMonitor.CameraStatus cameraStatus) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " (" + ((Object) CameraId.m1607toStringimpl(m1814getCameraIdDz_R5H8())) + ") camera status changed: " + cameraStatus);
        }
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if ((cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) || (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable)) {
                    this.cameraAvailability = cameraStatus;
                } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged) {
                    this.lastCameraPrioritiesChangedTs = TimestampNs.m1890boximpl(this.timeSource.mo1888nowvQl9yQU());
                }
                tryRestart();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void close() {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                this.controllerState = CameraController.ControllerState.CLOSING.INSTANCE;
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Closed " + this);
                }
                VirtualCamera virtualCamera = this.currentCamera;
                CaptureSessionState captureSessionState = this.currentSession;
                this.currentCamera = null;
                this.currentSession = null;
                Job job = this.restartJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                Job job2 = this.currentCameraStateJob;
                if (job2 != null) {
                    Job.DefaultImpls.cancel$default(job2, null, 1, null);
                }
                this.currentCameraStateJob = null;
                Job job3 = this.cameraAvailabilityJob;
                if (job3 != null) {
                    Job.DefaultImpls.cancel$default(job3, null, 1, null);
                }
                this.cameraAvailabilityJob = null;
                Job job4 = this.cameraPrioritiesJob;
                if (job4 != null) {
                    Job.DefaultImpls.cancel$default(job4, null, 1, null);
                }
                this.cameraPrioritiesJob = null;
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(this.cameraStatusMonitor);
                detachSessionAndCamera(captureSessionState, virtualCamera);
                if (this.graphConfig.getFlags().getCloseCameraDeviceOnClose() || this.camera2Quirks.m70x552c1673(m1814getCameraIdDz_R5H8())) {
                    if (log.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Quirk: Closing " + ((Object) CameraId.m1607toStringimpl(m1814getCameraIdDz_R5H8())) + " during " + this + "#close");
                    }
                    this.camera2DeviceManager.mo1830closeEfqyGwQ(m1814getCameraIdDz_R5H8());
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object awaitClosed(Continuation continuation) {
        C01951 c01951;
        if (continuation instanceof C01951) {
            c01951 = (C01951) continuation;
            int i = c01951.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01951.label = i - Integer.MIN_VALUE;
            } else {
                c01951 = new C01951(continuation);
            }
        }
        Object obj = c01951.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01951.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", this + "#awaitClosed");
            }
            synchronized (this.lock) {
                try {
                    if (Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSED.INSTANCE)) {
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + "#awaitClosed: Controller is already closed.");
                        }
                        return Boxing.boxBoolean(true);
                    }
                    if (!Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE)) {
                        if (log.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", this + "#awaitClosed: Controller isn't closing!");
                        }
                        return Boxing.boxBoolean(false);
                    }
                    Unit unit = Unit.INSTANCE;
                    CompletableDeferred completableDeferred = this.closedDeferred;
                    c01951.label = 1;
                    if (completableDeferred.await(c01951) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(true);
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void updateSurfaceMap(Map surfaceMap) {
        Intrinsics.checkNotNullParameter(surfaceMap, "surfaceMap");
        synchronized (this.lock) {
            if (isClosed()) {
                return;
            }
            this.currentSurfaceMap = surfaceMap;
            CaptureSessionState captureSessionState = this.currentSession;
            if (captureSessionState != null) {
                captureSessionState.configureSurfaceMap(surfaceMap);
            }
        }
    }

    public String toString() {
        return "Camera2CameraController(" + getCameraGraphId() + ')';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object bindSessionToCamera(Continuation continuation) {
        VirtualCamera virtualCamera;
        CaptureSessionState captureSessionState;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (this.lock) {
            virtualCamera = this.currentCamera;
            captureSessionState = this.currentSession;
            ref$ObjectRef.element = captureSessionState;
            Unit unit = Unit.INSTANCE;
        }
        if (virtualCamera != null && captureSessionState != null) {
            Object objCollect = virtualCamera.getState().collect(new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.bindSessionToCamera.3
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(CameraState cameraState, Continuation continuation2) {
                    if (cameraState instanceof CameraStateOpen) {
                        ((CaptureSessionState) ref$ObjectRef.element).setCameraDevice(((CameraStateOpen) cameraState).getCameraDevice());
                    } else if (cameraState instanceof CameraStateClosing) {
                        ((CaptureSessionState) ref$ObjectRef.element).shutdown();
                    } else if (cameraState instanceof CameraStateClosed) {
                        ((CaptureSessionState) ref$ObjectRef.element).shutdown();
                        this.onStateClosed((CameraStateClosed) cameraState);
                    }
                    return Unit.INSTANCE;
                }
            }, continuation);
            return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onStateClosed(CameraStateClosed cameraStateClosed) {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if (cameraStateClosed.m1845getCameraErrorCodemVEW8x0() != null) {
                    this.lastCameraError = cameraStateClosed.m1845getCameraErrorCodemVEW8x0();
                    if (CameraError.m1555isDisconnectedimpl(cameraStateClosed.m1845getCameraErrorCodemVEW8x0().m1557unboximpl())) {
                        this.controllerState = CameraController.ControllerState.DISCONNECTED.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + " is disconnected");
                        }
                    } else {
                        this.controllerState = CameraController.ControllerState.ERROR.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + " encountered error: " + ((Object) CameraError.m1556toStringimpl(cameraStateClosed.m1845getCameraErrorCodemVEW8x0().m1557unboximpl())));
                        }
                    }
                } else {
                    this.controllerState = CameraController.ControllerState.STOPPED.INSTANCE;
                }
                this.surfaceTracker.unregisterAllSurfaces();
                tryRestart();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void detachSessionAndCamera(CaptureSessionState captureSessionState, VirtualCamera virtualCamera) {
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new Camera2CameraController$detachSessionAndCamera$job$1(captureSessionState, virtualCamera, null), 3, null);
        if (Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE)) {
            jobLaunch$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Camera2CameraController.detachSessionAndCamera$lambda$0(this.f$0, (Throwable) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit detachSessionAndCamera$lambda$0(Camera2CameraController camera2CameraController, Throwable th) {
        synchronized (camera2CameraController.lock) {
            try {
                camera2CameraController.controllerState = CameraController.ControllerState.CLOSED.INSTANCE;
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", camera2CameraController + " is closed");
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        camera2CameraController.shutdownListener.onControllerClosed(camera2CameraController);
        CompletableDeferred completableDeferred = camera2CameraController.closedDeferred;
        Unit unit2 = Unit.INSTANCE;
        completableDeferred.complete(unit2);
        CoroutineScopeKt.cancel$default(camera2CameraController.scope, null, 1, null);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClosed() {
        return Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE) || Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSED.INSTANCE);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
        /* JADX INFO: renamed from: shouldRestart-X9Wt83s$camera_camera2_pipe, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean m1815shouldRestartX9Wt83s$camera_camera2_pipe(CameraController.ControllerState controllerState, CameraError cameraError, CameraStatusMonitor.CameraStatus cameraAvailability, TimestampNs timestampNs, long j) {
            boolean z;
            Intrinsics.checkNotNullParameter(controllerState, "controllerState");
            Intrinsics.checkNotNullParameter(cameraAvailability, "cameraAvailability");
            if (cameraAvailability instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                z = !(cameraError == null ? false : CameraError.m1553equalsimpl0(cameraError.m1557unboximpl(), CameraError.Companion.m1562getERROR_CAMERA_DISABLEDv7Vf74A()));
            }
            boolean z2 = timestampNs != null && DurationNs.m1879compareTozYRVrok(DurationNs.m1880constructorimpl(j - timestampNs.m1896unboximpl()), Camera2CameraController.PRIORITIES_CHANGED_THRESHOLD_NS) <= 0;
            if (Intrinsics.areEqual(controllerState, CameraController.ControllerState.DISCONNECTED.INSTANCE)) {
                if (!z && !z2) {
                    int i = Build.VERSION.SDK_INT;
                    if (29 <= i && i < 33) {
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Quirk for multi-resume activated: Kicking off restart.");
                        }
                    }
                }
                return true;
            }
            if (Intrinsics.areEqual(controllerState, CameraController.ControllerState.ERROR.INSTANCE) && z) {
                CameraError.Companion companion = CameraError.Companion;
                if (!(cameraError == null ? false : CameraError.m1553equalsimpl0(cameraError.m1557unboximpl(), companion.m1570getERROR_GRAPH_CONFIGv7Vf74A()))) {
                    if (!(cameraError == null ? false : CameraError.m1553equalsimpl0(cameraError.m1557unboximpl(), companion.m1572getERROR_SECURITY_EXCEPTIONv7Vf74A()))) {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
