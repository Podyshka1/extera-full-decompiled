package androidx.camera.camera2.pipe.compat;

import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.TimestampNs;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.GraphRequestProcessor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureSessionState implements CameraCaptureSessionWrapper.StateCallback {
    private static final Companion Companion = new Companion(null);
    private CameraDeviceWrapper _cameraDevice;
    private Map _surfaceMap;
    private final Map _surfaceTokenMap;
    private final Map activeOutputSurfaceMap;
    private final Map activeStreamSurfaceMap;
    private ConfiguredCameraCaptureSession cameraCaptureSession;
    private final CameraGraph.Flags cameraGraphFlags;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CountDownLatch captureSessionAttemptCompleted;
    private final CaptureSessionFactory captureSessionFactory;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private final int debugId;
    private final AtomicRef finalized;
    private final GraphListener graphListener;
    private boolean hasAttemptedCaptureSession;
    private final Object lock;
    private Map pendingOutputMap;
    private Map pendingSurfaceMap;
    private final CoroutineScope scope;
    private TimestampNs sessionCreatingTimestamp;
    private final CountDownLatch sessionDisconnected;
    private final SessionSequencer sessionSequencer;
    private State state;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;
    private final TimeSource timeSource;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$tryCreateCaptureSession$1 */
    static final class C02131 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02131(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CaptureSessionState.this.tryCreateCaptureSession(this);
        }
    }

    public CaptureSessionState(GraphListener graphListener, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory, CameraSurfaceManager cameraSurfaceManager, TimeSource timeSource, CameraGraph.Flags cameraGraphFlags, ConcurrentSessionSequencer concurrentSessionSequencer, StreamGraph streamGraph, StrictMode strictMode, Threads threads, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(captureSessionFactory, "captureSessionFactory");
        Intrinsics.checkNotNullParameter(captureSequenceProcessorFactory, "captureSequenceProcessorFactory");
        Intrinsics.checkNotNullParameter(cameraSurfaceManager, "cameraSurfaceManager");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        Intrinsics.checkNotNullParameter(cameraGraphFlags, "cameraGraphFlags");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.graphListener = graphListener;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = captureSequenceProcessorFactory;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.timeSource = timeSource;
        this.cameraGraphFlags = cameraGraphFlags;
        this.concurrentSessionSequencer = concurrentSessionSequencer;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.threads = threads;
        this.scope = scope;
        this.debugId = CaptureSessionStateKt.getCaptureSessionDebugIds().incrementAndGet();
        this.lock = new Object();
        this.finalized = AtomicFU.atomic(Boolean.FALSE);
        this.activeStreamSurfaceMap = DesugarCollections.synchronizedMap(new HashMap());
        this.activeOutputSurfaceMap = DesugarCollections.synchronizedMap(new HashMap());
        this.sessionSequencer = concurrentSessionSequencer != null ? new SessionSequencer(concurrentSessionSequencer) : null;
        this.state = State.PENDING;
        this.sessionDisconnected = new CountDownLatch(1);
        this.captureSessionAttemptCompleted = new CountDownLatch(1);
        this._surfaceTokenMap = new LinkedHashMap();
    }

    public final void setCameraDevice(CameraDeviceWrapper cameraDeviceWrapper) {
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    this._cameraDevice = cameraDeviceWrapper;
                    if (cameraDeviceWrapper != null) {
                        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CaptureSessionState$cameraDevice$2$1(this, null), 3, null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State PENDING = new State("PENDING", 0);
        public static final State CREATING = new State("CREATING", 1);
        public static final State CREATED = new State("CREATED", 2);
        public static final State CLOSING = new State("CLOSING", 3);
        public static final State CLOSED = new State("CLOSED", 4);

        private static final /* synthetic */ State[] $values() {
            return new State[]{PENDING, CREATING, CREATED, CLOSING, CLOSED};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        private State(String str, int i) {
        }

        static {
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public final void configureSurfaceMap(Map surfaces) {
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    Map mapEmptyMap = this._surfaceMap;
                    if (mapEmptyMap == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    updateTrackedSurfaces(mapEmptyMap, surfaces);
                    this._surfaceMap = surfaces;
                    Map map = this.pendingOutputMap;
                    if (map != null && this.pendingSurfaceMap == null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry entry : surfaces.entrySet()) {
                            if (map.containsKey(entry.getKey())) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                        if (linkedHashMap.size() == map.size()) {
                            this.pendingSurfaceMap = linkedHashMap;
                            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CaptureSessionState$configureSurfaceMap$1$1(this, null), 3, null);
                        }
                    }
                    BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CaptureSessionState$configureSurfaceMap$1$2(this, null), 3, null);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onActive(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Active");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onClosed(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Closed");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onClosed");
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onConfigureFailed(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", this + " Configuration Failed");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onConfigureFailed");
        this.graphListener.onGraphError(new GraphState.GraphStateError(CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false, null));
        shutdown();
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onConfigured(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Configured");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#configure");
        configure(session);
        this.captureSessionAttemptCompleted.countDown();
        SessionSequencer sessionSequencer = this.sessionSequencer;
        if (sessionSequencer != null) {
            sessionSequencer.release();
        }
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onReady(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Ready");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " CaptureQueueEmpty");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionDisconnected() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " session disconnecting");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onSessionDisconnected");
        disconnect();
        try {
            Trace.beginSection(this + "#onSessionDisconnected Await");
            this.sessionDisconnected.await();
            Unit unit = Unit.INSTANCE;
            Trace.endSection();
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionFinalized() throws Exception {
        if (this.finalized.compareAndSet(Boolean.FALSE, Boolean.TRUE)) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", this + " session finalizing");
            }
            Debug debug = Debug.INSTANCE;
            Trace.beginSection(this + "#onSessionFinalized");
            shutdown();
            finalizeSession$camera_camera2_pipe(0L);
            Trace.endSection();
        }
    }

    private final void configure(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        synchronized (this.lock) {
            try {
                ConfiguredCameraCaptureSession configuredCameraCaptureSession2 = this.cameraCaptureSession;
                if (configuredCameraCaptureSession2 == null && cameraCaptureSessionWrapper != null) {
                    Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory = this.captureSequenceProcessorFactory;
                    Map activeStreamSurfaceMap = this.activeStreamSurfaceMap;
                    Intrinsics.checkNotNullExpressionValue(activeStreamSurfaceMap, "activeStreamSurfaceMap");
                    Map activeOutputSurfaceMap = this.activeOutputSurfaceMap;
                    Intrinsics.checkNotNullExpressionValue(activeOutputSurfaceMap, "activeOutputSurfaceMap");
                    CaptureSequenceProcessor captureSequenceProcessorCreate = camera2CaptureSequenceProcessorFactory.create(cameraCaptureSessionWrapper, activeStreamSurfaceMap, activeOutputSurfaceMap);
                    if (captureSequenceProcessorCreate instanceof Camera2CaptureSequenceProcessor) {
                        configuredCameraCaptureSession = new ConfiguredCameraCaptureSession(cameraCaptureSessionWrapper, GraphRequestProcessor.Companion.from(captureSequenceProcessorCreate), (Camera2CaptureSequenceProcessor) captureSequenceProcessorCreate);
                    } else {
                        configuredCameraCaptureSession = new ConfiguredCameraCaptureSession(cameraCaptureSessionWrapper, GraphRequestProcessor.Companion.from(captureSequenceProcessorCreate), null);
                    }
                    configuredCameraCaptureSession2 = configuredCameraCaptureSession;
                    this.cameraCaptureSession = configuredCameraCaptureSession2;
                }
                if (this.state == State.CREATED && configuredCameraCaptureSession2 != null) {
                    boolean z = (this.pendingOutputMap == null || this.pendingSurfaceMap == null) ? false : true;
                    Unit unit = Unit.INSTANCE;
                    if (z) {
                        finalizeOutputsIfAvailable(false);
                    }
                    synchronized (this.lock) {
                        try {
                            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                                Timestamps timestamps = Timestamps.INSTANCE;
                                long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
                                TimestampNs timestampNs = this.sessionCreatingTimestamp;
                                Intrinsics.checkNotNull(timestampNs);
                                long jM1880constructorimpl = DurationNs.m1880constructorimpl(jMo1888nowvQl9yQU - timestampNs.m1896unboximpl());
                                StringBuilder sb = new StringBuilder();
                                sb.append("Configured ");
                                sb.append(this);
                                sb.append(" in ");
                                String str = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                                sb.append(str);
                                android.util.Log.i("CXCP", sb.toString());
                            }
                            this.graphListener.onGraphStarted(configuredCameraCaptureSession2.getProcessor());
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void disconnect() {
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSING;
                if (state != state2 && state != State.CLOSED) {
                    this.state = state2;
                    ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.cameraCaptureSession;
                    boolean z = false;
                    if (configuredCameraCaptureSession != null) {
                        this.cameraCaptureSession = null;
                    } else {
                        if (this.cameraGraphFlags.getCloseCaptureSessionOnDisconnect() && this.hasAttemptedCaptureSession) {
                            z = true;
                        }
                        configuredCameraCaptureSession = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    SessionSequencer sessionSequencer = this.sessionSequencer;
                    if (sessionSequencer != null) {
                        sessionSequencer.release();
                    }
                    if (z) {
                        Log log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Waiting for CameraCaptureSession configuration");
                        }
                        if (((Unit) this.threads.runBlockingCheckedOrNull(3000L, new C02113(null))) == null && log.getERROR_LOGGABLE()) {
                            android.util.Log.e("CXCP", "Waiting for CameraCaptureSession configuration timed out");
                        }
                        synchronized (this.lock) {
                            configuredCameraCaptureSession = this.cameraCaptureSession;
                            this.cameraCaptureSession = null;
                        }
                    }
                    Debug debug = Debug.INSTANCE;
                    Trace.beginSection(this.graphListener + "#onGraphStopping");
                    this.graphListener.onGraphStopping();
                    Trace.endSection();
                    if (configuredCameraCaptureSession != null) {
                        GraphRequestProcessor processor = configuredCameraCaptureSession.getProcessor();
                        Log log2 = Log.INSTANCE;
                        if (log2.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + " Shutdown");
                        }
                        Trace.beginSection(this + "#shutdown");
                        if (this.cameraGraphFlags.getAbortCapturesOnStop() && ((Unit) this.threads.runBlockingCheckedOrNull(2000L, new C02129(processor, null))) == null && log2.getERROR_LOGGABLE()) {
                            android.util.Log.e("CXCP", "Failed to abort captures in 2000ms");
                        }
                        Trace.beginSection(this + "#disconnect");
                        Camera2CaptureSequenceProcessor captureSequenceProcessor = configuredCameraCaptureSession.getCaptureSequenceProcessor();
                        if (captureSequenceProcessor != null) {
                            captureSequenceProcessor.disconnect$camera_camera2_pipe();
                        }
                        Trace.endSection();
                        if (this.cameraGraphFlags.getCloseCaptureSessionOnDisconnect() && ((Unit) this.threads.runBlockingCheckedOrNull(3000L, new C021012(configuredCameraCaptureSession, null))) == null && log2.getERROR_LOGGABLE()) {
                            android.util.Log.e("CXCP", "Failed to close the capture session in 3000ms");
                        }
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped(processor);
                        Trace.endSection();
                        Trace.endSection();
                    } else {
                        Trace.beginSection(this.graphListener + "#onGraphStopped");
                        this.graphListener.onGraphStopped(null);
                        Trace.endSection();
                    }
                    this.sessionDisconnected.countDown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$3 */
    static final class C02113 extends SuspendLambda implements Function1 {
        int label;

        C02113(Continuation continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return CaptureSessionState.this.new C02113(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C02113) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws InterruptedException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CaptureSessionState.this.captureSessionAttemptCompleted.await();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$9 */
    static final class C02129 extends SuspendLambda implements Function1 {
        final /* synthetic */ GraphRequestProcessor $graphProcessor;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02129(GraphRequestProcessor graphRequestProcessor, Continuation continuation) {
            super(1, continuation);
            this.$graphProcessor = graphRequestProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return CaptureSessionState.this.new C02129(this.$graphProcessor, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C02129) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Debug debug = Debug.INSTANCE;
            String str = CaptureSessionState.this + " stopRepeating";
            GraphRequestProcessor graphRequestProcessor = this.$graphProcessor;
            try {
                Trace.beginSection(str);
                graphRequestProcessor.stopRepeating$camera_camera2_pipe();
                Unit unit = Unit.INSTANCE;
                Trace.endSection();
                String str2 = CaptureSessionState.this + " abortCaptures";
                GraphRequestProcessor graphRequestProcessor2 = this.$graphProcessor;
                try {
                    Trace.beginSection(str2);
                    graphRequestProcessor2.abortCaptures$camera_camera2_pipe();
                    Trace.endSection();
                    return Unit.INSTANCE;
                } finally {
                }
            } finally {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$12 */
    static final class C021012 extends SuspendLambda implements Function1 {
        final /* synthetic */ ConfiguredCameraCaptureSession $captureSession;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C021012(ConfiguredCameraCaptureSession configuredCameraCaptureSession, Continuation continuation) {
            super(1, continuation);
            this.$captureSession = configuredCameraCaptureSession;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return CaptureSessionState.this.new C021012(this.$captureSession, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C021012) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Debug debug = Debug.INSTANCE;
            String str = CaptureSessionState.this + " CameraCaptureSessionWrapper#close";
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = this.$captureSession;
            CaptureSessionState captureSessionState = CaptureSessionState.this;
            try {
                Trace.beginSection(str);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Closing capture session for " + captureSessionState);
                }
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(configuredCameraCaptureSession.getSession());
                Unit unit = Unit.INSTANCE;
                Trace.endSection();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void shutdown() {
        long j;
        boolean z;
        disconnect();
        synchronized (this.lock) {
            try {
                State state = this.state;
                State state2 = State.CLOSED;
                j = 0;
                if (state != state2) {
                    z = true;
                    if (this._cameraDevice != null && this.hasAttemptedCaptureSession) {
                        int iM1581getFinalizeSessionOnCloseBehaviorBm6Tfm4 = this.cameraGraphFlags.m1581getFinalizeSessionOnCloseBehaviorBm6Tfm4();
                        CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion companion = CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion;
                        if (!CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m1583equalsimpl0(iM1581getFinalizeSessionOnCloseBehaviorBm6Tfm4, companion.m1586getIMMEDIATEBm6Tfm4())) {
                            if (CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m1583equalsimpl0(iM1581getFinalizeSessionOnCloseBehaviorBm6Tfm4, companion.m1588getTIMEOUTBm6Tfm4())) {
                                j = 2000;
                            } else {
                                z = false;
                            }
                        }
                    }
                }
                this._cameraDevice = null;
                this.state = state2;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            finalizeSession$camera_camera2_pipe(j);
        }
    }

    public final void finalizeSession$camera_camera2_pipe(long j) throws Exception {
        List list;
        if (j != 0) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CaptureSessionState$finalizeSession$1(j, this, null), 3, null);
            return;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Finalizing " + this);
        }
        synchronized (this.lock) {
            list = CollectionsKt.toList(this._surfaceTokenMap.values());
            this._surfaceTokenMap.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m((AutoCloseable) it.next());
        }
    }

    static /* synthetic */ void finalizeOutputsIfAvailable$default(CaptureSessionState captureSessionState, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        captureSessionState.finalizeOutputsIfAvailable(z);
    }

    private final void finalizeOutputsIfAvailable(boolean z) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        Map map;
        Map map2;
        boolean z2;
        synchronized (this.lock) {
            configuredCameraCaptureSession = this.cameraCaptureSession;
            map = this.pendingOutputMap;
            map2 = this.pendingSurfaceMap;
            Unit unit = Unit.INSTANCE;
        }
        if (configuredCameraCaptureSession == null || map == null || map2 == null) {
            return;
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#finalizeOutputConfigurations");
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        for (Map.Entry entry : map.entrySet()) {
            int iM1792unboximpl = ((StreamId) entry.getKey()).m1792unboximpl();
            OutputConfigurationWrapper outputConfigurationWrapper = (OutputConfigurationWrapper) entry.getValue();
            Object obj = map2.get(StreamId.m1786boximpl(iM1792unboximpl));
            if (obj == null) {
                throw new IllegalStateException("Required value was null.");
            }
            outputConfigurationWrapper.addSurface((Surface) obj);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashSet.add((OutputConfigurationWrapper) ((Map.Entry) it.next()).getValue());
        }
        configuredCameraCaptureSession.getSession().finalizeOutputConfigurations(CollectionsKt.toList(linkedHashSet));
        synchronized (this.lock) {
            try {
                z2 = false;
                if (this.state == State.CREATED) {
                    this.activeStreamSurfaceMap.putAll(map2);
                    for (Map.Entry entry2 : map2.entrySet()) {
                        int iM1792unboximpl2 = ((StreamId) entry2.getKey()).m1792unboximpl();
                        Surface surface = (Surface) entry2.getValue();
                        CameraStream cameraStreamMo1782getaKI5c8E = this.streamGraph.mo1782getaKI5c8E(iM1792unboximpl2);
                        if (cameraStreamMo1782getaKI5c8E == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        if (cameraStreamMo1782getaKI5c8E.getOutputs().size() != 1) {
                            throw new IllegalStateException("Cannot finalize a multi-output stream!");
                        }
                        Map activeOutputSurfaceMap = this.activeOutputSurfaceMap;
                        Intrinsics.checkNotNullExpressionValue(activeOutputSurfaceMap, "activeOutputSurfaceMap");
                        activeOutputSurfaceMap.put(OutputId.m1665boximpl(((OutputStream) CollectionsKt.single(cameraStreamMo1782getaKI5c8E.getOutputs())).mo1686getId4LaLFng()), surface);
                    }
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        long jM1880constructorimpl = DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        StringBuilder sb = new StringBuilder();
                        sb.append("Finalized ");
                        ArrayList arrayList = new ArrayList(map.size());
                        Iterator it2 = map.entrySet().iterator();
                        while (it2.hasNext()) {
                            arrayList.add(StreamId.m1786boximpl(((StreamId) ((Map.Entry) it2.next()).getKey()).m1792unboximpl()));
                        }
                        sb.append(arrayList);
                        sb.append(" for ");
                        sb.append(this);
                        sb.append(" in ");
                        Timestamps timestamps3 = Timestamps.INSTANCE;
                        String str = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                        sb.append(str);
                        android.util.Log.i("CXCP", sb.toString());
                    }
                    z2 = true;
                }
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2 && z) {
            this.graphListener.onGraphModified(configuredCameraCaptureSession.getProcessor());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object tryCreateCaptureSession(Continuation continuation) {
        C02131 c02131;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$ObjectRef ref$ObjectRef3;
        Ref$ObjectRef ref$ObjectRef4;
        Log log;
        CaptureSessionFactory.Result resultCreate;
        LinkedHashMap linkedHashMap;
        if (continuation instanceof C02131) {
            c02131 = (C02131) continuation;
            int i = c02131.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02131.label = i - Integer.MIN_VALUE;
            } else {
                c02131 = new C02131(continuation);
            }
        }
        Object obj = c02131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02131.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef2 = new Ref$ObjectRef();
                synchronized (this.lock) {
                    if (this.state != State.PENDING) {
                        return Unit.INSTANCE;
                    }
                    ref$ObjectRef.element = this._surfaceMap;
                    CameraDeviceWrapper cameraDeviceWrapper = this._cameraDevice;
                    ref$ObjectRef2.element = cameraDeviceWrapper;
                    if (ref$ObjectRef.element != null && cameraDeviceWrapper != null) {
                        this.state = State.CREATING;
                        this.hasAttemptedCaptureSession = true;
                        Timestamps timestamps = Timestamps.INSTANCE;
                        this.sessionCreatingTimestamp = TimestampNs.m1890boximpl(this.timeSource.mo1888nowvQl9yQU());
                        Unit unit = Unit.INSTANCE;
                        SessionSequencer sessionSequencer = this.sessionSequencer;
                        if (sessionSequencer != null) {
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Awaiting session lock");
                            }
                            c02131.L$0 = ref$ObjectRef;
                            c02131.L$1 = ref$ObjectRef2;
                            c02131.label = 1;
                            if (sessionSequencer.awaitSessionLock(c02131) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            ref$ObjectRef3 = ref$ObjectRef;
                            ref$ObjectRef4 = ref$ObjectRef2;
                        }
                        log = Log.INSTANCE;
                        if (log.getINFO_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Creating CameraCaptureSession from ");
                            CameraDeviceWrapper cameraDeviceWrapper2 = (CameraDeviceWrapper) ref$ObjectRef2.element;
                            String strMo1797getCameraIdDz_R5H8 = cameraDeviceWrapper2 != null ? cameraDeviceWrapper2.mo1797getCameraIdDz_R5H8() : null;
                            sb.append((Object) (strMo1797getCameraIdDz_R5H8 == null ? "null" : CameraId.m1607toStringimpl(strMo1797getCameraIdDz_R5H8)));
                            sb.append(" using ");
                            sb.append(this);
                            sb.append(" with ");
                            sb.append(ref$ObjectRef.element);
                            android.util.Log.i("CXCP", sb.toString());
                        }
                        Debug debug = Debug.INSTANCE;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("CameraDevice-");
                        CameraDeviceWrapper cameraDeviceWrapper3 = (CameraDeviceWrapper) ref$ObjectRef2.element;
                        sb2.append(cameraDeviceWrapper3 == null ? cameraDeviceWrapper3.mo1797getCameraIdDz_R5H8() : null);
                        sb2.append("#createCaptureSession");
                        Trace.beginSection(sb2.toString());
                        CaptureSessionFactory captureSessionFactory = this.captureSessionFactory;
                        Object obj2 = ref$ObjectRef2.element;
                        Intrinsics.checkNotNull(obj2);
                        Object obj3 = ref$ObjectRef.element;
                        Intrinsics.checkNotNull(obj3);
                        resultCreate = captureSessionFactory.create((CameraDeviceWrapper) obj2, (Map) obj3, this);
                        Trace.endSection();
                        if (resultCreate instanceof CaptureSessionFactory.Result.Success) {
                            if (log.getERROR_LOGGABLE()) {
                                android.util.Log.e("CXCP", "Failed to create capture session for " + this + '!');
                            }
                            return Unit.INSTANCE;
                        }
                        synchronized (this.lock) {
                            try {
                                State state = this.state;
                                if (state != State.CLOSING && state != State.CLOSED) {
                                    if (state != State.CREATING) {
                                        throw new IllegalStateException(("Unexpected state: " + this.state).toString());
                                    }
                                    this.state = State.CREATED;
                                    Map map = this.activeStreamSurfaceMap;
                                    Object obj4 = ref$ObjectRef.element;
                                    Intrinsics.checkNotNull(obj4);
                                    map.putAll((Map) obj4);
                                    this.activeOutputSurfaceMap.putAll(((CaptureSessionFactory.Result.Success) resultCreate).getOutputSurfaceMap());
                                    Map deferred = ((CaptureSessionFactory.Result.Success) resultCreate).getDeferred();
                                    if (!deferred.isEmpty()) {
                                        if (log.getINFO_LOGGABLE()) {
                                            android.util.Log.i("CXCP", "Created " + this + " with " + CollectionsKt.toList(((Map) ref$ObjectRef.element).keySet()) + ". Waiting to finalize " + CollectionsKt.toList(deferred.keySet()));
                                        }
                                        this.pendingOutputMap = deferred;
                                        Map map2 = this._surfaceMap;
                                        if (map2 != null) {
                                            linkedHashMap = new LinkedHashMap();
                                            for (Map.Entry entry : map2.entrySet()) {
                                                if (deferred.containsKey(entry.getKey())) {
                                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                                }
                                            }
                                        } else {
                                            linkedHashMap = null;
                                        }
                                        if (linkedHashMap != null && linkedHashMap.size() == deferred.size()) {
                                            this.pendingSurfaceMap = linkedHashMap;
                                        }
                                    }
                                    Unit unit2 = Unit.INSTANCE;
                                    configure(null);
                                    return Unit.INSTANCE;
                                }
                                if (log.getINFO_LOGGABLE()) {
                                    android.util.Log.i("CXCP", "Warning: " + this + " was " + this.state + " while configuration was in progress.");
                                }
                                return Unit.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return Unit.INSTANCE;
                }
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef4 = (Ref$ObjectRef) c02131.L$1;
            ref$ObjectRef3 = (Ref$ObjectRef) c02131.L$0;
            ResultKt.throwOnFailure(obj);
            Trace.beginSection(sb2.toString());
            CaptureSessionFactory captureSessionFactory2 = this.captureSessionFactory;
            Object obj22 = ref$ObjectRef2.element;
            Intrinsics.checkNotNull(obj22);
            Object obj32 = ref$ObjectRef.element;
            Intrinsics.checkNotNull(obj32);
            resultCreate = captureSessionFactory2.create((CameraDeviceWrapper) obj22, (Map) obj32, this);
            Trace.endSection();
            if (resultCreate instanceof CaptureSessionFactory.Result.Success) {
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
        ref$ObjectRef = ref$ObjectRef3;
        ref$ObjectRef2 = ref$ObjectRef4;
        log = Log.INSTANCE;
        if (log.getINFO_LOGGABLE()) {
        }
        Debug debug2 = Debug.INSTANCE;
        StringBuilder sb22 = new StringBuilder();
        sb22.append("CameraDevice-");
        CameraDeviceWrapper cameraDeviceWrapper32 = (CameraDeviceWrapper) ref$ObjectRef2.element;
        sb22.append(cameraDeviceWrapper32 == null ? cameraDeviceWrapper32.mo1797getCameraIdDz_R5H8() : null);
        sb22.append("#createCaptureSession");
    }

    private final void updateTrackedSurfaces(Map map, Map map2) throws Exception {
        Set set = CollectionsKt.toSet(map.values());
        Set set2 = CollectionsKt.toSet(map2.values());
        for (Surface surface : SetsKt.minus(set, (Iterable) set2)) {
            AutoCloseable autoCloseable = (AutoCloseable) this._surfaceTokenMap.remove(surface);
            if (autoCloseable != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(autoCloseable);
            } else {
                autoCloseable = null;
            }
            if (autoCloseable == null) {
                throw new IllegalStateException(("Surface " + surface + " doesn't have a matching surface token!").toString());
            }
        }
        for (Surface surface2 : SetsKt.minus(set2, (Iterable) set)) {
            this._surfaceTokenMap.put(surface2, this.cameraSurfaceManager.registerSurface$camera_camera2_pipe(surface2));
        }
    }

    public String toString() {
        return "CaptureSessionState-" + this.debugId;
    }

    private static final class ConfiguredCameraCaptureSession {
        private final Camera2CaptureSequenceProcessor captureSequenceProcessor;
        private final GraphRequestProcessor processor;
        private final CameraCaptureSessionWrapper session;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfiguredCameraCaptureSession)) {
                return false;
            }
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = (ConfiguredCameraCaptureSession) obj;
            return Intrinsics.areEqual(this.session, configuredCameraCaptureSession.session) && Intrinsics.areEqual(this.processor, configuredCameraCaptureSession.processor) && Intrinsics.areEqual(this.captureSequenceProcessor, configuredCameraCaptureSession.captureSequenceProcessor);
        }

        public int hashCode() {
            int iHashCode = ((this.session.hashCode() * 31) + this.processor.hashCode()) * 31;
            Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor = this.captureSequenceProcessor;
            return iHashCode + (camera2CaptureSequenceProcessor == null ? 0 : camera2CaptureSequenceProcessor.hashCode());
        }

        public String toString() {
            return "ConfiguredCameraCaptureSession(session=" + this.session + ", processor=" + this.processor + ", captureSequenceProcessor=" + this.captureSequenceProcessor + ')';
        }

        public ConfiguredCameraCaptureSession(CameraCaptureSessionWrapper session, GraphRequestProcessor processor, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(processor, "processor");
            this.session = session;
            this.processor = processor;
            this.captureSequenceProcessor = camera2CaptureSequenceProcessor;
        }

        public final CameraCaptureSessionWrapper getSession() {
            return this.session;
        }

        public final GraphRequestProcessor getProcessor() {
            return this.processor;
        }

        public final Camera2CaptureSequenceProcessor getCaptureSequenceProcessor() {
            return this.captureSequenceProcessor;
        }
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
