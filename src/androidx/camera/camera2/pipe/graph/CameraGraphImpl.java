package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
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
import androidx.camera.camera2.pipe.Result3A;
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
import androidx.view.LifecycleRegistry$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Options$Companion$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u008b\u0001\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0001\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0017\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b'\u0010(JJ\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000,\"\u0004\b\u0000\u0010)2-\u0010/\u001a)\b\u0001\u0012\u0004\u0012\u00020\u001e\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000,0+\u0012\u0006\u0012\u0004\u0018\u00010-0*¢\u0006\u0002\b.H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u0010\u00106\u001a\u000205H\u0096@¢\u0006\u0004\b6\u00107J!\u0010>\u001a\u0002022\u0006\u00109\u001a\u0002082\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=Jc\u0010M\u001a\b\u0012\u0004\u0012\u00020J0,2\b\u0010@\u001a\u0004\u0018\u00010?2\b\u0010B\u001a\u0004\u0018\u00010A2\b\u0010D\u001a\u0004\u0018\u00010C2\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010E2\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010E2\u000e\u0010I\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010EH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010N\u001a\u000202H\u0016¢\u0006\u0004\bN\u00104J\u000f\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bP\u0010QR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010RR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010SR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010TR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010UR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010VR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010WR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010XR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010YR\u001a\u0010\u0017\u001a\u00020\u00168\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010Z\u001a\u0004\b[\u0010\\R\u001a\u0010\u0019\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010]\u001a\u0004\b^\u0010_R\u001a\u0010\u001b\u001a\u00020\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010`\u001a\u0004\ba\u0010bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010cR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010dR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010eR\u0014\u0010g\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010hR*\u0010k\u001a\u00020i2\u0006\u0010j\u001a\u00020i8\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\bk\u0010l\u001a\u0004\bk\u0010m\"\u0004\bn\u0010oR\u0014\u0010s\u001a\u00020p8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010r¨\u0006t"}, d2 = {"Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;", "Landroidx/camera/camera2/pipe/CameraGraph;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraMetadata;", "metadata", "Landroidx/camera/camera2/pipe/graph/GraphProcessor;", "graphProcessor", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;", "surfaceGraph", "Landroidx/camera/camera2/pipe/CameraController;", "cameraController", "Landroidx/camera/camera2/pipe/internal/FrameDistributor;", "frameDistributor", "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;", "frameCaptureQueue", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "audioRestrictionController", "Landroidx/camera/camera2/pipe/CameraGraphId;", "id", "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;", "parameters", "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;", "listeners", "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;", "sessionLock", "Lkotlinx/coroutines/CoroutineScope;", "graphScope", "Landroidx/camera/camera2/pipe/graph/Controller3A;", "controller3A", "<init>", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/graph/Controller3A;)V", "Landroidx/camera/camera2/pipe/core/Token;", "token", "Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;", "createSessionFromToken", "(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;", "T", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "block", "withSessionLockAsync", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "start", "()V", "Landroidx/camera/camera2/pipe/CameraGraph$Session;", "acquireSession", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/StreamId;", "stream", "Landroid/view/Surface;", "surface", "setSurface-NYG5g8E", "(ILandroid/view/Surface;)V", "setSurface", "Landroidx/camera/camera2/pipe/AeMode;", "aeMode", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "Landroidx/camera/camera2/pipe/AwbMode;", "awbMode", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", "Landroidx/camera/camera2/pipe/Result3A;", "update3A-ydBZfZg", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;", "update3A", "close", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/graph/GraphProcessor;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;", "Landroidx/camera/camera2/pipe/CameraController;", "Landroidx/camera/camera2/pipe/internal/FrameDistributor;", "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "Landroidx/camera/camera2/pipe/CameraGraphId;", "getId", "()Landroidx/camera/camera2/pipe/CameraGraphId;", "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;", "getParameters", "()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;", "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;", "getListeners", "()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;", "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/camera/camera2/pipe/graph/Controller3A;", "Lkotlinx/atomicfu/AtomicBoolean;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", _UrlKt.FRAGMENT_ENCODE_SET, "value", "isForeground", "Z", "()Z", "setForeground", "(Z)V", "Landroidx/camera/camera2/pipe/StreamGraph;", "getStreams", "()Landroidx/camera/camera2/pipe/StreamGraph;", "streams", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraGraphImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraGraphImpl.kt\nandroidx/camera/camera2/pipe/graph/CameraGraphImpl\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,346:1\n59#2,2:347\n59#2,2:357\n59#2,2:367\n71#2,2:377\n59#2,2:387\n1740#3,3:349\n1#4:352\n71#5,4:353\n78#5,4:359\n71#5,4:363\n78#5,4:369\n71#5,4:373\n78#5,4:379\n71#5,4:383\n78#5,4:389\n*S KotlinDebug\n*F\n+ 1 CameraGraphImpl.kt\nandroidx/camera/camera2/pipe/graph/CameraGraphImpl\n*L\n86#1:347,2\n156#1:357,2\n166#1:367,2\n212#1:377,2\n308#1:387,2\n100#1:349,3\n155#1:353,4\n159#1:359,4\n165#1:363,4\n169#1:369,4\n210#1:373,4\n215#1:379,4\n307#1:383,4\n317#1:389,4\n*E\n"})
public final class CameraGraphImpl implements CameraGraph {
    private final AudioRestrictionController audioRestrictionController;
    private final CameraController cameraController;
    private final AtomicBoolean closed = AtomicFU.atomic(false);
    private final Controller3A controller3A;
    private final FrameCaptureQueue frameCaptureQueue;
    private final FrameDistributor frameDistributor;
    private final GraphListener graphListener;
    private final GraphProcessor graphProcessor;
    private final CoroutineScope graphScope;
    private final CameraGraphId id;
    private boolean isForeground;
    private final CameraGraphRequestListenersImpl listeners;
    private final CameraGraphParametersImpl parameters;
    private final GraphSessionLock sessionLock;
    private final StreamGraphImpl streamGraph;
    private final SurfaceGraph surfaceGraph;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$acquireSession$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl", m921f = "CameraGraphImpl.kt", m922i = {}, m923l = {175}, m924m = "acquireSession", m925n = {}, m926s = {}, m927v = 1)
    public static final class C02391 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C02391(Continuation<? super C02391> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CameraGraphImpl.this.acquireSession(this);
        }
    }

    public CameraGraphImpl(CameraGraph.Config config, CameraMetadata cameraMetadata, GraphProcessor graphProcessor, GraphListener graphListener, StreamGraphImpl streamGraphImpl, SurfaceGraph surfaceGraph, CameraController cameraController, FrameDistributor frameDistributor, FrameCaptureQueue frameCaptureQueue, AudioRestrictionController audioRestrictionController, CameraGraphId cameraGraphId, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl, GraphSessionLock graphSessionLock, CoroutineScope coroutineScope, Controller3A controller3A) {
        this.graphProcessor = graphProcessor;
        this.graphListener = graphListener;
        this.streamGraph = streamGraphImpl;
        this.surfaceGraph = surfaceGraph;
        this.cameraController = cameraController;
        this.frameDistributor = frameDistributor;
        this.frameCaptureQueue = frameCaptureQueue;
        this.audioRestrictionController = audioRestrictionController;
        this.id = cameraGraphId;
        this.parameters = cameraGraphParametersImpl;
        this.listeners = cameraGraphRequestListenersImpl;
        this.sessionLock = graphSessionLock;
        this.graphScope = coroutineScope;
        this.controller3A = controller3A;
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", Debug.INSTANCE.formatCameraGraphProperties(cameraMetadata, config, this));
        }
        if (CameraGraph.OperatingMode.m1340equalsimpl0(config.getSessionMode(), CameraGraph.OperatingMode.INSTANCE.m1345getHIGH_SPEED2uNL3no())) {
            if (streamGraphImpl.getOutputs().isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m215m("Cannot create a HIGH_SPEED CameraGraph without outputs.");
                throw null;
            }
            if (streamGraphImpl.getOutputs().size() > 2) {
                Options$Companion$$ExternalSyntheticBUOutline0.m971m("Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are ", streamGraphImpl.getOutputs());
                throw null;
            }
            List<OutputStream> outputs = streamGraphImpl.getOutputs();
            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                Iterator<T> it = outputs.iterator();
                while (it.hasNext()) {
                    if (!((OutputStream) it.next()).isValidForHighSpeedOperatingMode()) {
                        Options$Companion$$ExternalSyntheticBUOutline0.m971m("HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are ", this.streamGraph.getOutputs());
                        throw null;
                    }
                }
            }
        }
        if (config.getInput() != null) {
            if (config.getInput().isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m215m("At least one InputConfiguration is required for reprocessing");
                throw null;
            }
            if (Build.VERSION.SDK_INT < 31 && config.getInput().size() > 1) {
                f$$ExternalSyntheticBUOutline1.m215m("Multi resolution reprocessing not supported under Android S");
                throw null;
            }
        }
        if (!this.streamGraph.getImageSourceMap$camera_camera2_pipe().isEmpty()) {
            this.surfaceGraph.maybeUpdateSurfaces$camera_camera2_pipe();
        }
        this.isForeground = true;
    }

    public CameraGraphId getId() {
        return this.id;
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
            LifecycleRegistry$$ExternalSyntheticBUOutline0.m152m("Cannot start ", this, " after calling close()");
            return;
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
    public Object acquireSession(Continuation<? super CameraGraph.Session> continuation) {
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
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objAcquireToken$camera_camera2_pipe);
        }
        return createSessionFromToken((Token) objAcquireToken$camera_camera2_pipe);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraphBase
    /* JADX INFO: renamed from: setSurface-NYG5g8E */
    public void mo1350setSurfaceNYG5g8E(int stream, Surface surface) throws Exception {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(((Object) StreamId.m1530toStringimpl(stream)) + "#setSurface");
        if (surface != null && !surface.isValid() && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", this + "#setSurface: " + surface + " is invalid");
        }
        this.surfaceGraph.m1673setNYG5g8E(stream, surface);
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public Deferred<Result3A> mo1290update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions) {
        return withSessionLockAsync(new CameraGraphImpl$update3A$1(this, aeMode, afMode, awbMode, aeRegions, afRegions, awbRegions, null));
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
        return getId().getName();
    }

    private final CameraGraphSessionImpl createSessionFromToken(Token token) {
        return new CameraGraphSessionImpl(token, this.graphProcessor, this.controller3A, this.frameCaptureQueue, getParameters(), getListeners());
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "T", "it", "Landroidx/camera/camera2/pipe/core/Token;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1", m921f = "CameraGraphImpl.kt", m922i = {}, m923l = {344}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C02401<T> extends SuspendLambda implements Function2<Token, Continuation<? super Deferred<? extends T>>, Object> {
        final /* synthetic */ Function2<CoroutineScope, Continuation<? super Deferred<? extends T>>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02401(Function2<? super CoroutineScope, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> function2, Continuation<? super C02401> continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02401(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Token token, Continuation<? super Deferred<? extends T>> continuation) {
            return ((C02401) create(token, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$withSessionLockAsync$1$1", m921f = "CameraGraphImpl.kt", m922i = {}, m923l = {344}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Deferred<? extends T>>, Object> {
            final /* synthetic */ Function2<CoroutineScope, Continuation<? super Deferred<? extends T>>, Object> $block;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Function2<? super CoroutineScope, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Deferred<? extends T>> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Function2<CoroutineScope, Continuation<? super Deferred<? extends T>>, Object> function2 = this.$block;
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
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, null);
            this.label = 1;
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(anonymousClass1, this);
            return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
        }
    }

    private final <T> Deferred<T> withSessionLockAsync(Function2<? super CoroutineScope, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> block) {
        return this.sessionLock.withTokenInAsync$camera_camera2_pipe(this.graphScope, new C02401(block, null));
    }
}
