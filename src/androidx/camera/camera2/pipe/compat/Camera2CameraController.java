package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import androidx.camera.camera2.pipe.StreamId;
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
import com.android.dx.io.Opcodes;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u0000 \u008a\u00012\u00020\u0001:\u0004\u008b\u0001\u008a\u0001B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0003¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020&H\u0003¢\u0006\u0004\b)\u0010(J\u000f\u0010*\u001a\u00020&H\u0003¢\u0006\u0004\b*\u0010(J\u0017\u0010-\u001a\u00020&2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0010\u0010/\u001a\u00020&H\u0082@¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020&2\u0006\u00102\u001a\u000201H\u0002¢\u0006\u0004\b3\u00104J#\u00109\u001a\u00020&2\b\u00106\u001a\u0004\u0018\u0001052\b\u00108\u001a\u0004\u0018\u000107H\u0003¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H\u0003¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020&H\u0016¢\u0006\u0004\b>\u0010(J\u000f\u0010?\u001a\u00020&H\u0016¢\u0006\u0004\b?\u0010(J\u0010\u0010@\u001a\u00020;H\u0096@¢\u0006\u0004\b@\u00100J#\u0010E\u001a\u00020&2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020C0AH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010JR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010KR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010LR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010MR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010NR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010OR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010PR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010QR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010RR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010SR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010TR\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010UR\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010VR\u001a\u0010\u001d\u001a\u00020\u001c8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010W\u001a\u0004\bX\u0010YR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010ZR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010[R\u0014\u0010]\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010_\u001a\u00020;8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b_\u0010`R(\u0010b\u001a\u00020a8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\bb\u0010c\u0012\u0004\bh\u0010(\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u0016\u0010i\u001a\u00020+8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010l\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010o\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0018\u0010r\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010u\u001a\u0004\u0018\u00010t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\u001a\u0010x\u001a\b\u0012\u0004\u0012\u00020&0w8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010z\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u0010|\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R$\u0010~\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020C\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001a\u0010\u0080\u0001\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010sR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010sR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010sR\u0017\u0010\u0085\u0001\u001a\u00030\u0083\u00018VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010IR)\u0010\u0087\u0001\u001a\u00020;2\u0007\u0010\u0086\u0001\u001a\u00020;8V@VX\u0096\u000e¢\u0006\u000f\u001a\u0005\b\u0087\u0001\u0010=\"\u0006\b\u0088\u0001\u0010\u0089\u0001¨\u0006\u008c\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraController;", "Landroidx/camera/camera2/pipe/CameraController;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/StrictMode;", "strictMode", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "graphConfig", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "Landroidx/camera/camera2/pipe/SurfaceTracker;", "surfaceTracker", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;", "cameraStatusMonitor", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "captureSessionFactory", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;", "captureSequenceProcessorFactory", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;", "camera2DeviceManager", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "cameraSurfaceManager", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "camera2Quirks", "Landroidx/camera/camera2/pipe/core/TimeSource;", "timeSource", "Landroidx/camera/camera2/pipe/CameraGraphId;", "cameraGraphId", "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;", "shutdownListener", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "streamGraph", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;", "concurrentSessionSequencers", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V", _UrlKt.FRAGMENT_ENCODE_SET, "tryRestart", "()V", "startLocked", "stopLocked", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;", "cameraStatus", "onCameraStatusChanged", "(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V", "bindSessionToCamera", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/CameraStateClosed;", "cameraState", "onStateClosed", "(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "session", "Landroidx/camera/camera2/pipe/compat/VirtualCamera;", "camera", "detachSessionAndCamera", "(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V", _UrlKt.FRAGMENT_ENCODE_SET, "isClosed", "()Z", "start", "close", "awaitClosed", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "surfaceMap", "updateSurfaceMap", "(Ljava/util/Map;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/camera/camera2/pipe/core/Threads;", "Landroidx/camera/camera2/pipe/StrictMode;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "Landroidx/camera/camera2/pipe/SurfaceTracker;", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "Landroidx/camera/camera2/pipe/core/TimeSource;", "Landroidx/camera/camera2/pipe/CameraGraphId;", "getCameraGraphId", "()Landroidx/camera/camera2/pipe/CameraGraphId;", "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", "_isForeground", "Z", "Landroidx/camera/camera2/pipe/CameraController$ControllerState;", "controllerState", "Landroidx/camera/camera2/pipe/CameraController$ControllerState;", "getControllerState$camera_camera2_pipe", "()Landroidx/camera/camera2/pipe/CameraController$ControllerState;", "setControllerState$camera_camera2_pipe", "(Landroidx/camera/camera2/pipe/CameraController$ControllerState;)V", "getControllerState$camera_camera2_pipe$annotations", "cameraAvailability", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;", "Landroidx/camera/camera2/pipe/CameraError;", "lastCameraError", "Landroidx/camera/camera2/pipe/CameraError;", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "lastCameraPrioritiesChangedTs", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "Lkotlinx/coroutines/Job;", "restartJob", "Lkotlinx/coroutines/Job;", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "concurrentSessionSequencer", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "Lkotlinx/coroutines/CompletableDeferred;", "closedDeferred", "Lkotlinx/coroutines/CompletableDeferred;", "currentCamera", "Landroidx/camera/camera2/pipe/compat/VirtualCamera;", "currentSession", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "currentSurfaceMap", "Ljava/util/Map;", "currentCameraStateJob", "cameraAvailabilityJob", "cameraPrioritiesJob", "Landroidx/camera/camera2/pipe/CameraId;", "getCameraId-Dz_R5H8", "cameraId", "value", "isForeground", "setForeground", "(Z)V", "Companion", "ShutdownListener", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CameraController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,512:1\n1#2:513\n50#3,2:514\n59#3,2:516\n71#3,2:518\n82#3,2:520\n50#3,2:522\n71#3,2:524\n71#3,2:526\n50#3,2:528\n50#3,2:530\n50#3,2:532\n50#3,2:534\n50#3,2:536\n50#3,2:538\n71#3,2:540\n50#3,2:542\n50#3,2:544\n50#3,2:546\n*S KotlinDebug\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController\n*L\n166#1:514,2\n200#1:516,2\n203#1:518,2\n219#1:520,2\n249#1:522,2\n257#1:524,2\n263#1:526,2\n274#1:528,2\n279#1:530,2\n300#1:532,2\n322#1:534,2\n328#1:536,2\n331#1:538,2\n336#1:540,2\n409#1:542,2\n412#1:544,2\n434#1:546,2\n*E\n"})
public final class Camera2CameraController implements CameraController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long PRIORITIES_CHANGED_THRESHOLD_NS = DurationNs.m1477constructorimpl(200000000);
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2Quirks camera2Quirks;
    private Job cameraAvailabilityJob;
    private final CameraGraphId cameraGraphId;
    private Job cameraPrioritiesJob;
    private final CameraStatusMonitor cameraStatusMonitor;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CaptureSessionFactory captureSessionFactory;
    private final CompletableDeferred<Unit> closedDeferred;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private VirtualCamera currentCamera;
    private Job currentCameraStateJob;
    private CaptureSessionState currentSession;
    private Map<StreamId, ? extends Surface> currentSurfaceMap;
    private final CameraGraph.Config graphConfig;
    private final GraphListener graphListener;
    private CameraError lastCameraError;
    private TimestampNs lastCameraPrioritiesChangedTs;
    private Job restartJob;
    private final CoroutineScope scope;
    private final ShutdownListener shutdownListener;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final SurfaceTracker surfaceTracker;
    private final Threads threads;
    private final TimeSource timeSource;
    private final Object lock = new Object();
    private boolean _isForeground = true;
    private CameraController.ControllerState controllerState = CameraController.ControllerState.STOPPED.INSTANCE;
    private CameraStatusMonitor.CameraStatus cameraAvailability = new CameraStatusMonitor.CameraStatus.CameraUnavailable(m1410getCameraIdDz_R5H8(), null);

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;", _UrlKt.FRAGMENT_ENCODE_SET, "onControllerClosed", _UrlKt.FRAGMENT_ENCODE_SET, "cameraController", "Landroidx/camera/camera2/pipe/CameraController;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public interface ShutdownListener {
        void onControllerClosed(CameraController cameraController);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$awaitClosed$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2CameraController", m766f = "Camera2CameraController.kt", m767i = {}, m768l = {340}, m769m = "awaitClosed", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01971 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01971(Continuation<? super C01971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Camera2CameraController.this.awaitClosed(this);
        }
    }

    public Camera2CameraController(CoroutineScope coroutineScope, Threads threads, StrictMode strictMode, CameraGraph.Config config, GraphListener graphListener, SurfaceTracker surfaceTracker, CameraStatusMonitor cameraStatusMonitor, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory, Camera2DeviceManager camera2DeviceManager, CameraSurfaceManager cameraSurfaceManager, Camera2Quirks camera2Quirks, TimeSource timeSource, CameraGraphId cameraGraphId, ShutdownListener shutdownListener, StreamGraphImpl streamGraphImpl, ConcurrentSessionSequencers concurrentSessionSequencers) {
        this.scope = coroutineScope;
        this.threads = threads;
        this.strictMode = strictMode;
        this.graphConfig = config;
        this.graphListener = graphListener;
        this.surfaceTracker = surfaceTracker;
        this.cameraStatusMonitor = cameraStatusMonitor;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = camera2CaptureSequenceProcessorFactory;
        this.camera2DeviceManager = camera2DeviceManager;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.camera2Quirks = camera2Quirks;
        this.timeSource = timeSource;
        this.cameraGraphId = cameraGraphId;
        this.shutdownListener = shutdownListener;
        this.streamGraph = streamGraphImpl;
        ConcurrentCameraGraphs concurrentCameraGraphs = config.getConcurrentCameraGraphs();
        this.concurrentSessionSequencer = concurrentCameraGraphs != null ? concurrentSessionSequencers.getSequencer(getCameraGraphId(), concurrentCameraGraphs) : null;
        this.closedDeferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.cameraAvailabilityJob = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C01951(null), 3, null);
        this.cameraPrioritiesJob = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C01962(null), 3, null);
    }

    public CameraGraphId getCameraGraphId() {
        return this.cameraGraphId;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String m1410getCameraIdDz_R5H8() {
        return this.graphConfig.getCamera();
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

    /* JADX INFO: renamed from: getControllerState$camera_camera2_pipe, reason: from getter */
    public final CameraController.ControllerState getControllerState() {
        return this.controllerState;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$1", m766f = "Camera2CameraController.kt", m767i = {}, m768l = {124}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01951 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01951(Continuation<? super C01951> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Camera2CameraController.this.new C01951(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StateFlow<CameraStatusMonitor.CameraStatus> cameraAvailability = Camera2CameraController.this.cameraStatusMonitor.getCameraAvailability();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                FlowCollector<? super CameraStatusMonitor.CameraStatus> flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((CameraStatusMonitor.CameraStatus) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(CameraStatusMonitor.CameraStatus cameraStatus, Continuation<? super Unit> continuation) {
                        if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                            if (CameraId.m1211equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraAvailable) cameraStatus).getCameraId(), camera2CameraController.m1410getCameraIdDz_R5H8())) {
                                camera2CameraController.onCameraStatusChanged(cameraStatus);
                            } else {
                                Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
                                return null;
                            }
                        } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable) {
                            if (CameraId.m1211equalsimpl0(((CameraStatusMonitor.CameraStatus.CameraUnavailable) cameraStatus).getCameraId(), camera2CameraController.m1410getCameraIdDz_R5H8())) {
                                camera2CameraController.onCameraStatusChanged(cameraStatus);
                            } else {
                                Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
                                return null;
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            InstantKt$$ExternalSyntheticBUOutline0.m813m();
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$2", m766f = "Camera2CameraController.kt", m767i = {}, m768l = {140}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01962 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01962(Continuation<? super C01962> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Camera2CameraController.this.new C01962(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01962) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedFlow<Unit> cameraPriorities = Camera2CameraController.this.cameraStatusMonitor.getCameraPriorities();
                final Camera2CameraController camera2CameraController = Camera2CameraController.this;
                FlowCollector<? super Unit> flowCollector = new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.2.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((Unit) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(Unit unit, Continuation<? super Unit> continuation) {
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            InstantKt$$ExternalSyntheticBUOutline0.m813m();
            return null;
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
        long jMo1485nowvQl9yQU = this.timeSource.mo1485nowvQl9yQU();
        if (INSTANCE.m1411shouldRestartX9Wt83s$camera_camera2_pipe(this.controllerState, this.lastCameraError, this.cameraAvailability, this.lastCameraPrioritiesChangedTs, jMo1485nowvQl9yQU)) {
            long j = this.graphConfig.getFlags().getEnableRestartDelays() ? 700L : 0L;
            Job job = this.restartJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            this.restartJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02002(j, this, null), 3, null);
            return;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + ": Not restarting. Controller state = " + getControllerState() + ", last camera error = " + this.lastCameraError + ", camera availability = " + this.cameraAvailability + ", last camera priorities changed = " + this.lastCameraPrioritiesChangedTs + ", current timestamp = " + ((Object) TimestampNs.m1492toStringimpl(jMo1485nowvQl9yQU)) + '.');
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2", m766f = "Camera2CameraController.kt", m767i = {}, m768l = {181}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nCamera2CameraController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,512:1\n50#2,2:513\n*S KotlinDebug\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2\n*L\n188#1:513,2\n*E\n"})
    public static final class C02002 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $delayMs;
        int label;
        final /* synthetic */ Camera2CameraController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02002(long j, Camera2CameraController camera2CameraController, Continuation<? super C02002> continuation) {
            super(2, continuation);
            this.$delayMs = j;
            this.this$0 = camera2CameraController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02002(this.$delayMs, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02002) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Object obj2 = this.this$0.lock;
            Camera2CameraController camera2CameraController = this.this$0;
            synchronized (obj2) {
                try {
                    if (!camera2CameraController.isClosed() && !Intrinsics.areEqual(camera2CameraController.getControllerState(), CameraController.ControllerState.STOPPING.INSTANCE) && !Intrinsics.areEqual(camera2CameraController.getControllerState(), CameraController.ControllerState.STOPPED.INSTANCE)) {
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
        Set<CameraId> of;
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
        String camera = this.graphConfig.getCamera();
        ConcurrentCameraGraphs concurrentCameraGraphs = this.graphConfig.getConcurrentCameraGraphs();
        if (concurrentCameraGraphs == null || (of = concurrentCameraGraphs.getCameraIds()) == null) {
            of = SetsKt.setOf(CameraId.m1208boximpl(camera));
        }
        VirtualCamera virtualCameraMo1427openzDSwpeU = this.camera2DeviceManager.mo1427openzDSwpeU(camera, CollectionsKt.toList(SetsKt.minus(of, CameraId.m1208boximpl(camera))), this.graphListener, false, new Function1() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(this.f$0.isForeground());
            }
        });
        if (virtualCameraMo1427openzDSwpeU == null) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to start " + this + ": Open request submission failed");
                return;
            }
            return;
        }
        if (this.currentCamera != null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
            return;
        }
        if (this.currentSession != null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
            return;
        }
        this.currentCamera = virtualCameraMo1427openzDSwpeU;
        CaptureSessionState captureSessionState = new CaptureSessionState(this.graphListener, this.captureSessionFactory, this.captureSequenceProcessorFactory, this.cameraSurfaceManager, this.timeSource, this.graphConfig.getFlags(), this.concurrentSessionSequencer, this.streamGraph, this.strictMode, this.threads, this.scope);
        this.currentSession = captureSessionState;
        Map<StreamId, ? extends Surface> map = this.currentSurfaceMap;
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
        this.currentCameraStateJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C01995(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraController$startLocked$5 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$startLocked$5", m766f = "Camera2CameraController.kt", m767i = {}, m768l = {Opcodes.INVOKE_POLYMORPHIC_RANGE}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C01995 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01995(Continuation<? super C01995> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Camera2CameraController.this.new C01995(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01995) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
            android.util.Log.d("CXCP", this + " (" + ((Object) CameraId.m1213toStringimpl(m1410getCameraIdDz_R5H8())) + ") camera status changed: " + cameraStatus);
        }
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if ((cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) || (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable)) {
                    this.cameraAvailability = cameraStatus;
                } else if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged) {
                    this.lastCameraPrioritiesChangedTs = TimestampNs.m1487boximpl(this.timeSource.mo1485nowvQl9yQU());
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
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(this.cameraStatusMonitor);
                detachSessionAndCamera(captureSessionState, virtualCamera);
                if (this.graphConfig.getFlags().getCloseCameraDeviceOnClose() || this.camera2Quirks.m68x552c1673(m1410getCameraIdDz_R5H8())) {
                    if (log.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Quirk: Closing " + ((Object) CameraId.m1213toStringimpl(m1410getCameraIdDz_R5H8())) + " during " + this + "#close");
                    }
                    this.camera2DeviceManager.mo1426closeEfqyGwQ(m1410getCameraIdDz_R5H8());
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
    public Object awaitClosed(Continuation<? super Boolean> continuation) {
        C01971 c01971;
        if (continuation instanceof C01971) {
            c01971 = (C01971) continuation;
            int i = c01971.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01971.label = i - Integer.MIN_VALUE;
            } else {
                c01971 = new C01971(continuation);
            }
        }
        Object obj = c01971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01971.label;
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
                    CompletableDeferred<Unit> completableDeferred = this.closedDeferred;
                    c01971.label = 1;
                    if (completableDeferred.await(c01971) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(true);
    }

    @Override // androidx.camera.camera2.pipe.CameraController
    public void updateSurfaceMap(Map<StreamId, ? extends Surface> surfaceMap) {
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
    /* JADX WARN: Type inference failed for: r3v0, types: [T, androidx.camera.camera2.pipe.compat.CaptureSessionState] */
    public final Object bindSessionToCamera(Continuation<? super Unit> continuation) {
        VirtualCamera virtualCamera;
        ?? r3;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (this.lock) {
            virtualCamera = this.currentCamera;
            r3 = this.currentSession;
            objectRef.element = r3;
            Unit unit = Unit.INSTANCE;
        }
        if (virtualCamera != null && r3 != 0) {
            Object objCollect = virtualCamera.getState().collect(new FlowCollector() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController.bindSessionToCamera.3
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation2) {
                    return emit((CameraState) obj, (Continuation<? super Unit>) continuation2);
                }

                public final Object emit(CameraState cameraState, Continuation<? super Unit> continuation2) {
                    if (cameraState instanceof CameraStateOpen) {
                        objectRef.element.setCameraDevice(((CameraStateOpen) cameraState).getCameraDevice());
                    } else if (cameraState instanceof CameraStateClosing) {
                        objectRef.element.shutdown();
                    } else if (cameraState instanceof CameraStateClosed) {
                        objectRef.element.shutdown();
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
    public final void onStateClosed(CameraStateClosed cameraState) {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                if (cameraState.getCameraErrorCode() != null) {
                    this.lastCameraError = cameraState.getCameraErrorCode();
                    if (CameraError.m1161isDisconnectedimpl(cameraState.getCameraErrorCode().getValue())) {
                        this.controllerState = CameraController.ControllerState.DISCONNECTED.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + " is disconnected");
                        }
                    } else {
                        this.controllerState = CameraController.ControllerState.ERROR.INSTANCE;
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", this + " encountered error: " + ((Object) CameraError.m1162toStringimpl(cameraState.getCameraErrorCode().getValue())));
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

    private final void detachSessionAndCamera(CaptureSessionState session, VirtualCamera camera) {
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new Camera2CameraController$detachSessionAndCamera$job$1(session, camera, null), 3, null);
        if (Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE)) {
            jobLaunch$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Camera2CameraController.$r8$lambda$8pmWcPJwfGYerhscAozQzB2p3_o(this.f$0, (Throwable) obj);
                }
            });
        }
    }

    public static Unit $r8$lambda$8pmWcPJwfGYerhscAozQzB2p3_o(Camera2CameraController camera2CameraController, Throwable th) {
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
        CompletableDeferred<Unit> completableDeferred = camera2CameraController.closedDeferred;
        Unit unit2 = Unit.INSTANCE;
        completableDeferred.complete(unit2);
        CoroutineScopeKt.cancel$default(camera2CameraController.scope, null, 1, null);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClosed() {
        return Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSING.INSTANCE) || Intrinsics.areEqual(this.controllerState, CameraController.ControllerState.CLOSED.INSTANCE);
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J;\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0001¢\u0006\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "RESTART_TIMEOUT_WHEN_ENABLED_MS", _UrlKt.FRAGMENT_ENCODE_SET, "MS_TO_NS", _UrlKt.FRAGMENT_ENCODE_SET, "PRIORITIES_CHANGED_THRESHOLD_NS", "Landroidx/camera/camera2/pipe/core/DurationNs;", "J", "shouldRestart", _UrlKt.FRAGMENT_ENCODE_SET, "controllerState", "Landroidx/camera/camera2/pipe/CameraController$ControllerState;", "lastCameraError", "Landroidx/camera/camera2/pipe/CameraError;", "cameraAvailability", "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;", "lastCameraPrioritiesChangedTs", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "currentTs", "shouldRestart-X9Wt83s$camera_camera2_pipe", "(Landroidx/camera/camera2/pipe/CameraController$ControllerState;Landroidx/camera/camera2/pipe/CameraError;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Landroidx/camera/camera2/pipe/core/TimestampNs;J)Z", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCamera2CameraController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion\n+ 2 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,512:1\n29#2:513\n50#3,2:514\n*S KotlinDebug\n*F\n+ 1 Camera2CameraController.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion\n*L\n480#1:513\n492#1:514,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
        /* JADX INFO: renamed from: shouldRestart-X9Wt83s$camera_camera2_pipe, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean m1411shouldRestartX9Wt83s$camera_camera2_pipe(CameraController.ControllerState controllerState, CameraError lastCameraError, CameraStatusMonitor.CameraStatus cameraAvailability, TimestampNs lastCameraPrioritiesChangedTs, long currentTs) {
            boolean z;
            if (cameraAvailability instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                z = !(lastCameraError == null ? false : CameraError.m1159equalsimpl0(lastCameraError.getValue(), CameraError.INSTANCE.m1168getERROR_CAMERA_DISABLEDv7Vf74A()));
            }
            boolean z2 = lastCameraPrioritiesChangedTs != null && DurationNs.m1476compareTozYRVrok(DurationNs.m1477constructorimpl(currentTs - lastCameraPrioritiesChangedTs.getValue()), Camera2CameraController.PRIORITIES_CHANGED_THRESHOLD_NS) <= 0;
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
                CameraError.Companion companion = CameraError.INSTANCE;
                if (!(lastCameraError == null ? false : CameraError.m1159equalsimpl0(lastCameraError.getValue(), companion.m1176getERROR_GRAPH_CONFIGv7Vf74A()))) {
                    if (!(lastCameraError == null ? false : CameraError.m1159equalsimpl0(lastCameraError.getValue(), companion.m1178getERROR_SECURITY_EXCEPTIONv7Vf74A()))) {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
