package androidx.camera.camera2.pipe.graph;

import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphImpl implements CameraGraph {
    private final AudioRestrictionController audioRestrictionController;
    private final CameraController cameraController;
    private final AtomicBoolean closed;
    private final Controller3A controller3A;
    private final FrameCaptureQueue frameCaptureQueue;
    private final FrameDistributor frameDistributor;
    private final GraphListener graphListener;
    private final GraphProcessor graphProcessor;
    private final CoroutineScope graphScope;

    /* JADX INFO: renamed from: id */
    private final CameraGraphId f17id;
    private boolean isForeground;
    private final CameraGraphRequestListenersImpl listeners;
    private final CameraGraphParametersImpl parameters;
    private final GraphSessionLock sessionLock;
    private final StreamGraphImpl streamGraph;
    private final SurfaceGraph surfaceGraph;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1 */
    static final class C02391 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02391(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CameraGraphImpl.this.acquireSession(this);
        }
    }

    public CameraGraphImpl(CameraGraph.Config graphConfig, CameraMetadata metadata, GraphProcessor graphProcessor, GraphListener graphListener, StreamGraphImpl streamGraph, SurfaceGraph surfaceGraph, CameraController cameraController, FrameDistributor frameDistributor, FrameCaptureQueue frameCaptureQueue, AudioRestrictionController audioRestrictionController, CameraGraphId id, CameraGraphParametersImpl parameters, CameraGraphRequestListenersImpl listeners, GraphSessionLock sessionLock, CoroutineScope graphScope, Controller3A controller3A) {
        CameraGraph.Config config;
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(graphProcessor, "graphProcessor");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(surfaceGraph, "surfaceGraph");
        Intrinsics.checkNotNullParameter(cameraController, "cameraController");
        Intrinsics.checkNotNullParameter(frameDistributor, "frameDistributor");
        Intrinsics.checkNotNullParameter(frameCaptureQueue, "frameCaptureQueue");
        Intrinsics.checkNotNullParameter(audioRestrictionController, "audioRestrictionController");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(sessionLock, "sessionLock");
        Intrinsics.checkNotNullParameter(graphScope, "graphScope");
        Intrinsics.checkNotNullParameter(controller3A, "controller3A");
        this.graphProcessor = graphProcessor;
        this.graphListener = graphListener;
        this.streamGraph = streamGraph;
        this.surfaceGraph = surfaceGraph;
        this.cameraController = cameraController;
        this.frameDistributor = frameDistributor;
        this.frameCaptureQueue = frameCaptureQueue;
        this.audioRestrictionController = audioRestrictionController;
        this.f17id = id;
        this.parameters = parameters;
        this.listeners = listeners;
        this.sessionLock = sessionLock;
        this.graphScope = graphScope;
        this.controller3A = controller3A;
        this.closed = AtomicFU.atomic(false);
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            config = graphConfig;
            android.util.Log.i("CXCP", Debug.INSTANCE.formatCameraGraphProperties(metadata, config, this));
        } else {
            config = graphConfig;
        }
        if (CameraGraph.OperatingMode.m1591equalsimpl0(config.m1579getSessionMode2uNL3no(), CameraGraph.OperatingMode.Companion.m1596getHIGH_SPEED2uNL3no())) {
            if (streamGraph.getOutputs().isEmpty()) {
                throw new IllegalArgumentException("Cannot create a HIGH_SPEED CameraGraph without outputs.");
            }
            if (streamGraph.getOutputs().size() > 2) {
                throw new IllegalArgumentException(("Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are " + streamGraph.getOutputs()).toString());
            }
            List outputs = streamGraph.getOutputs();
            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                Iterator it = outputs.iterator();
                while (it.hasNext()) {
                    if (!((OutputStream) it.next()).isValidForHighSpeedOperatingMode()) {
                        throw new IllegalArgumentException(("HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are " + this.streamGraph.getOutputs()).toString());
                    }
                }
            }
        }
        if (config.getInput() != null) {
            if (config.getInput().isEmpty()) {
                throw new IllegalArgumentException("At least one InputConfiguration is required for reprocessing");
            }
            if (Build.VERSION.SDK_INT < 31 && config.getInput().size() > 1) {
                throw new IllegalArgumentException("Multi resolution reprocessing not supported under Android S");
            }
        }
        if (!this.streamGraph.getImageSourceMap$camera_camera2_pipe().isEmpty()) {
            this.surfaceGraph.maybeUpdateSurfaces$camera_camera2_pipe();
        }
        this.isForeground = true;
    }

    public CameraGraphId getId() {
        return this.f17id;
    }

    public CameraGraphParametersImpl getParameters() {
        return this.parameters;
    }

    public CameraGraphRequestListenersImpl getListeners() {
        return this.listeners;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public StreamGraph getStreams() {
        return this.streamGraph;
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void setForeground(boolean z) {
        this.isForeground = z;
        this.cameraController.setForeground(z);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    public void start() {
        if (this.closed.getValue()) {
            throw new IllegalStateException(("Cannot start " + this + " after calling close()").toString());
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#start");
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", "Starting " + this);
        }
        this.graphListener.onGraphStarting();
        this.cameraController.start();
        Trace.endSection();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object acquireSession(Continuation continuation) {
        C02391 c02391;
        if (continuation instanceof C02391) {
            c02391 = (C02391) continuation;
            int i = c02391.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02391.label = i - Integer.MIN_VALUE;
            } else {
                c02391 = new C02391(continuation);
            }
        }
        Object objAcquireToken$camera_camera2_pipe = c02391.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02391.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAcquireToken$camera_camera2_pipe);
            GraphSessionLock graphSessionLock = this.sessionLock;
            c02391.label = 1;
            objAcquireToken$camera_camera2_pipe = graphSessionLock.acquireToken$camera_camera2_pipe(c02391);
            if (objAcquireToken$camera_camera2_pipe == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objAcquireToken$camera_camera2_pipe);
        }
        return createSessionFromToken((Token) objAcquireToken$camera_camera2_pipe);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: setSurface-NYG5g8E */
    public void mo1601setSurfaceNYG5g8E(int i, Surface surface) throws Exception {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) StreamId.m1791toStringimpl(i)) + "#setSurface");
        if (surface != null && !surface.isValid() && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", this + "#setSurface: " + surface + " is invalid");
        }
        this.surfaceGraph.m1933setNYG5g8E(i, surface);
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public Deferred mo1540update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3) {
        return withSessionLockAsync(new CameraGraphImpl$update3A$1(this, aeMode, afMode, awbMode, list, list2, list3, null));
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        if (this.closed.compareAndSet(false, true)) {
            Debug debug = Debug.INSTANCE;
            Trace.beginSection(this + "#close");
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "Closing " + this);
            }
            this.graphProcessor.close();
            this.cameraController.close();
            this.frameDistributor.close();
            this.frameCaptureQueue.close();
            this.surfaceGraph.close();
            this.streamGraph.close();
            this.audioRestrictionController.removeCameraGraph(this);
            CoroutineScopeKt.cancel$default(this.graphScope, null, 1, null);
            Trace.endSection();
        }
    }

    public String toString() {
        return getId().toString();
    }

    private final CameraGraphSessionImpl createSessionFromToken(Token token) {
        return new CameraGraphSessionImpl(token, this.graphProcessor, this.controller3A, this.frameCaptureQueue, getParameters(), getListeners());
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1 */
    static final class C02401 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02401(Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C02401(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Token token, Continuation continuation) {
            return ((C02401) create(token, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Function2 $block;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Function2 function2, Continuation continuation) {
                super(2, continuation);
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Function2 function2 = this.$block;
                this.label = 1;
                Object objInvoke = function2.invoke(coroutineScope, this);
                return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, null);
            this.label = 1;
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(anonymousClass1, this);
            return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
        }
    }

    private final Deferred withSessionLockAsync(Function2 function2) {
        return this.sessionLock.withTokenInAsync$camera_camera2_pipe(this.graphScope, new C02401(function2, null));
    }
}
