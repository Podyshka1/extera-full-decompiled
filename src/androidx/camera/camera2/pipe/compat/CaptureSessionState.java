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
import androidx.view.LifecycleRegistry$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 ~2\u00020\u0001:\u0004\u007f\u0080\u0001~Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u001c2\b\b\u0002\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u001cH\u0082@¢\u0006\u0004\b#\u0010$J7\u0010*\u001a\u00020\u001c2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%H\u0003¢\u0006\u0004\b*\u0010+J!\u0010-\u001a\u00020\u001c2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b/\u0010\u001eJ\u0017\u00100\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b0\u0010\u001eJ\u0017\u00101\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b1\u0010\u001eJ\u0017\u00102\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b2\u0010\u001eJ\u0017\u00103\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b3\u0010\u001eJ\u0017\u00104\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b4\u0010\u001eJ\u000f\u00105\u001a\u00020\u001cH\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u001cH\u0016¢\u0006\u0004\b7\u00106J\r\u00108\u001a\u00020\u001c¢\u0006\u0004\b8\u00106J\r\u00109\u001a\u00020\u001c¢\u0006\u0004\b9\u00106J\u0019\u0010>\u001a\u00020\u001c2\b\b\u0002\u0010;\u001a\u00020:H\u0000¢\u0006\u0004\b<\u0010=J\u000f\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\b@\u0010AR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010BR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010CR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010DR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010ER\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010FR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010GR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010HR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010IR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010JR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010KR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010LR\u0014\u0010N\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010Q\u001a\u00020P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00020\u001f0S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010URT\u0010X\u001aB\u0012\f\u0012\n W*\u0004\u0018\u00010&0&\u0012\f\u0012\n W*\u0004\u0018\u00010'0' W* \u0012\f\u0012\n W*\u0004\u0018\u00010&0&\u0012\f\u0012\n W*\u0004\u0018\u00010'0'\u0018\u00010%0V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010YRT\u0010[\u001aB\u0012\f\u0012\n W*\u0004\u0018\u00010Z0Z\u0012\f\u0012\n W*\u0004\u0018\u00010'0' W* \u0012\f\u0012\n W*\u0004\u0018\u00010Z0Z\u0012\f\u0012\n W*\u0004\u0018\u00010'0'\u0018\u00010%0V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010`\u001a\u0004\u0018\u00010_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010f\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bf\u0010gR$\u0010i\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020h\u0018\u00010%8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bi\u0010YR$\u0010j\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'\u0018\u00010%8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bj\u0010YR\u0016\u0010l\u001a\u00020k8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0014\u0010o\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010q\u001a\u00020\u001f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0014\u0010s\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010pR$\u0010t\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'\u0018\u00010%8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bt\u0010YR$\u0010w\u001a\u0012\u0012\u0004\u0012\u00020'\u0012\b\u0012\u00060uj\u0002`v0V8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bw\u0010YR(\u0010}\u001a\u0004\u0018\u00010b2\b\u0010x\u001a\u0004\u0018\u00010b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\by\u0010z\"\u0004\b{\u0010|¨\u0006\u0081\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "captureSessionFactory", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;", "captureSequenceProcessorFactory", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "cameraSurfaceManager", "Landroidx/camera/camera2/pipe/core/TimeSource;", "timeSource", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "cameraGraphFlags", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "concurrentSessionSequencer", "Landroidx/camera/camera2/pipe/StreamGraph;", "streamGraph", "Landroidx/camera/camera2/pipe/StrictMode;", "strictMode", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineScope;)V", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "session", _UrlKt.FRAGMENT_ENCODE_SET, "configure", "(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V", _UrlKt.FRAGMENT_ENCODE_SET, "retryAllowed", "finalizeOutputsIfAvailable", "(Z)V", "tryCreateCaptureSession", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "oldSurfaceMap", "newSurfaceMap", "updateTrackedSurfaces", "(Ljava/util/Map;Ljava/util/Map;)V", "surfaces", "configureSurfaceMap", "(Ljava/util/Map;)V", "onActive", "onClosed", "onConfigureFailed", "onConfigured", "onReady", "onCaptureQueueEmpty", "onSessionDisconnected", "()V", "onSessionFinalized", "disconnect", "shutdown", _UrlKt.FRAGMENT_ENCODE_SET, "delayMs", "finalizeSession$camera_camera2_pipe", "(J)V", "finalizeSession", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "Landroidx/camera/camera2/pipe/core/TimeSource;", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "Landroidx/camera/camera2/pipe/StreamGraph;", "Landroidx/camera/camera2/pipe/StrictMode;", "Landroidx/camera/camera2/pipe/core/Threads;", "Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", "Lkotlinx/atomicfu/AtomicRef;", "finalized", "Lkotlinx/atomicfu/AtomicRef;", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin.jvm.PlatformType", "activeStreamSurfaceMap", "Ljava/util/Map;", "Landroidx/camera/camera2/pipe/OutputId;", "activeOutputSurfaceMap", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "sessionCreatingTimestamp", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "Landroidx/camera/camera2/pipe/compat/SessionSequencer;", "sessionSequencer", "Landroidx/camera/camera2/pipe/compat/SessionSequencer;", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "_cameraDevice", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;", "cameraCaptureSession", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "pendingOutputMap", "pendingSurfaceMap", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;", "state", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;", "Ljava/util/concurrent/CountDownLatch;", "sessionDisconnected", "Ljava/util/concurrent/CountDownLatch;", "hasAttemptedCaptureSession", "Z", "captureSessionAttemptCompleted", "_surfaceMap", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "_surfaceTokenMap", "value", "getCameraDevice", "()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "setCameraDevice", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V", "cameraDevice", "Companion", "State", "ConfiguredCameraCaptureSession", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 6 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 7 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,657:1\n1#2:658\n538#3:659\n523#3,6:660\n538#3:841\n523#3,6:842\n50#4,2:666\n50#4,2:668\n71#4,2:678\n50#4,2:688\n50#4,2:698\n50#4,2:700\n50#4,2:702\n50#4,2:725\n59#4:735\n60#4:740\n50#4,2:741\n82#4,2:743\n50#4,2:753\n82#4,2:759\n82#4,2:769\n50#4,2:791\n59#4:803\n60#4:812\n50#4,2:818\n59#4,2:820\n82#4,2:835\n59#4,2:837\n59#4,2:839\n71#5,4:670\n78#5,4:674\n71#5,4:680\n78#5,4:684\n71#5,4:690\n78#5,4:694\n71#5,4:704\n48#5,2:708\n71#5,4:710\n50#5,3:714\n78#5,4:717\n78#5,4:721\n71#5,4:727\n78#5,4:731\n71#5,4:745\n78#5,4:749\n71#5,4:755\n71#5,4:761\n78#5,4:765\n71#5,4:771\n78#5,4:775\n78#5,4:779\n71#5,4:783\n78#5,4:787\n71#5,4:795\n78#5,4:813\n48#5,2:822\n71#5,4:824\n50#5,3:828\n78#5,4:831\n70#6:736\n74#6,2:738\n70#6:799\n70#6:804\n74#6,2:810\n70#6:817\n29#7:737\n29#7:805\n1869#8,2:793\n153#9,3:800\n126#9:806\n153#9,3:807\n*S KotlinDebug\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState\n*L\n147#1:659\n147#1:660,6\n603#1:841\n603#1:842,6\n169#1:666,2\n173#1:668,2\n182#1:678,2\n194#1:688,2\n203#1:698,2\n207#1:700,2\n211#1:702,2\n227#1:725,2\n287#1:735\n287#1:740\n334#1:741,2\n341#1:743,2\n366#1:753,2\n380#1:759,2\n411#1:769,2\n479#1:791,2\n527#1:803\n527#1:812\n566#1:818,2\n572#1:820,2\n580#1:835,2\n586#1:837,2\n597#1:839,2\n174#1:670,4\n178#1:674,4\n183#1:680,4\n190#1:684,4\n195#1:690,4\n199#1:694,4\n212#1:704,4\n220#1:708,2\n220#1:710,4\n220#1:714,3\n220#1:717,4\n221#1:721,4\n228#1:727,4\n231#1:731,4\n349#1:745,4\n351#1:749,4\n367#1:755,4\n386#1:761,4\n388#1:765,4\n416#1:771,4\n418#1:775,4\n420#1:779,4\n424#1:783,4\n426#1:787,4\n501#1:795,4\n539#1:813,4\n576#1:822,2\n576#1:824,4\n576#1:828,3\n576#1:831,4\n288#1:736\n289#1:738,2\n502#1:799\n528#1:804\n530#1:810,2\n559#1:817\n288#1:737\n528#1:805\n486#1:793,2\n513#1:800,3\n529#1:806\n529#1:807,3\n*E\n"})
public final class CaptureSessionState implements CameraCaptureSessionWrapper.StateCallback {
    private static final Companion Companion = new Companion(null);
    private CameraDeviceWrapper _cameraDevice;
    private Map<StreamId, ? extends Surface> _surfaceMap;
    private final Map<Surface, AutoCloseable> _surfaceTokenMap;
    private ConfiguredCameraCaptureSession cameraCaptureSession;
    private final CameraGraph.Flags cameraGraphFlags;
    private final CameraSurfaceManager cameraSurfaceManager;
    private final Camera2CaptureSequenceProcessorFactory captureSequenceProcessorFactory;
    private final CountDownLatch captureSessionAttemptCompleted;
    private final CaptureSessionFactory captureSessionFactory;
    private final ConcurrentSessionSequencer concurrentSessionSequencer;
    private final GraphListener graphListener;
    private boolean hasAttemptedCaptureSession;
    private Map<StreamId, ? extends OutputConfigurationWrapper> pendingOutputMap;
    private Map<StreamId, ? extends Surface> pendingSurfaceMap;
    private final CoroutineScope scope;
    private TimestampNs sessionCreatingTimestamp;
    private final CountDownLatch sessionDisconnected;
    private final SessionSequencer sessionSequencer;
    private State state;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;
    private final TimeSource timeSource;
    private final int debugId = CaptureSessionStateKt.getCaptureSessionDebugIds().incrementAndGet();
    private final Object lock = new Object();
    private final AtomicRef<Boolean> finalized = AtomicFU.atomic(Boolean.FALSE);
    private final Map<StreamId, Surface> activeStreamSurfaceMap = Collections.synchronizedMap(new HashMap());
    private final Map<OutputId, Surface> activeOutputSurfaceMap = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$tryCreateCaptureSession$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CaptureSessionState", m766f = "CaptureSessionState.kt", m767i = {0, 0}, m768l = {567}, m769m = "tryCreateCaptureSession", m770n = {"surfaces", "device"}, m771s = {"L$0", "L$1"}, m772v = 1)
    public static final class C02141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C02141(Continuation<? super C02141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CaptureSessionState.this.tryCreateCaptureSession(this);
        }
    }

    public CaptureSessionState(GraphListener graphListener, CaptureSessionFactory captureSessionFactory, Camera2CaptureSequenceProcessorFactory camera2CaptureSequenceProcessorFactory, CameraSurfaceManager cameraSurfaceManager, TimeSource timeSource, CameraGraph.Flags flags, ConcurrentSessionSequencer concurrentSessionSequencer, StreamGraph streamGraph, StrictMode strictMode, Threads threads, CoroutineScope coroutineScope) {
        this.graphListener = graphListener;
        this.captureSessionFactory = captureSessionFactory;
        this.captureSequenceProcessorFactory = camera2CaptureSequenceProcessorFactory;
        this.cameraSurfaceManager = cameraSurfaceManager;
        this.timeSource = timeSource;
        this.cameraGraphFlags = flags;
        this.concurrentSessionSequencer = concurrentSessionSequencer;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.threads = threads;
        this.scope = coroutineScope;
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
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PENDING", "CREATING", "CREATED", "CLOSING", "CLOSED", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
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

    public final void configureSurfaceMap(Map<StreamId, ? extends Surface> surfaces) {
        synchronized (this.lock) {
            try {
                State state = this.state;
                if (state != State.CLOSING && state != State.CLOSED) {
                    Map<StreamId, ? extends Surface> mapEmptyMap = this._surfaceMap;
                    if (mapEmptyMap == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    updateTrackedSurfaces(mapEmptyMap, surfaces);
                    this._surfaceMap = surfaces;
                    Map<StreamId, ? extends OutputConfigurationWrapper> map = this.pendingOutputMap;
                    if (map != null && this.pendingSurfaceMap == null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry<StreamId, ? extends Surface> entry : surfaces.entrySet()) {
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
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Active");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onClosed(CameraCaptureSessionWrapper session) {
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
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", this + " Configuration Failed");
        }
        Debug debug = Debug.INSTANCE;
        Trace.beginSection(this + "#onConfigureFailed");
        this.graphListener.onGraphError(new GraphState.GraphStateError(CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false, null));
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
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " Ready");
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSessionWrapper session) {
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
    public void onSessionFinalized() {
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

    private final void configure(CameraCaptureSessionWrapper session) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        synchronized (this.lock) {
            try {
                ConfiguredCameraCaptureSession configuredCameraCaptureSession2 = this.cameraCaptureSession;
                if (configuredCameraCaptureSession2 == null && session != null) {
                    CaptureSequenceProcessor<?, ?> captureSequenceProcessorCreate = this.captureSequenceProcessorFactory.create(session, this.activeStreamSurfaceMap, this.activeOutputSurfaceMap);
                    if (captureSequenceProcessorCreate instanceof Camera2CaptureSequenceProcessor) {
                        configuredCameraCaptureSession = new ConfiguredCameraCaptureSession(session, GraphRequestProcessor.INSTANCE.from(captureSequenceProcessorCreate), (Camera2CaptureSequenceProcessor) captureSequenceProcessorCreate);
                    } else {
                        configuredCameraCaptureSession = new ConfiguredCameraCaptureSession(session, GraphRequestProcessor.INSTANCE.from(captureSequenceProcessorCreate), null);
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
                                android.util.Log.i("CXCP", "Configured " + this + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m1477constructorimpl(this.timeSource.mo1485nowvQl9yQU() - this.sessionCreatingTimestamp.getValue()) / 1000000.0d)}, 1)));
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
                        if (((Unit) this.threads.runBlockingCheckedOrNull(3000L, new C02123(null))) == null && log.getERROR_LOGGABLE()) {
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
                        if (this.cameraGraphFlags.getAbortCapturesOnStop() && ((Unit) this.threads.runBlockingCheckedOrNull(2000L, new C02139(processor, null))) == null && log2.getERROR_LOGGABLE()) {
                            android.util.Log.e("CXCP", "Failed to abort captures in 2000ms");
                        }
                        Trace.beginSection(this + "#disconnect");
                        Camera2CaptureSequenceProcessor captureSequenceProcessor = configuredCameraCaptureSession.getCaptureSequenceProcessor();
                        if (captureSequenceProcessor != null) {
                            captureSequenceProcessor.disconnect$camera_camera2_pipe();
                        }
                        Trace.endSection();
                        if (this.cameraGraphFlags.getCloseCaptureSessionOnDisconnect() && ((Unit) this.threads.runBlockingCheckedOrNull(3000L, new AnonymousClass12(configuredCameraCaptureSession, null))) == null && log2.getERROR_LOGGABLE()) {
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
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$3", m766f = "CaptureSessionState.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02123 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        public C02123(Continuation<? super C02123> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CaptureSessionState.this.new C02123(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02123) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws InterruptedException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CaptureSessionState.this.captureSessionAttemptCompleted.await();
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$9 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$9", m766f = "CaptureSessionState.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nCaptureSessionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,657:1\n48#2,2:658\n71#2,4:660\n50#2,3:664\n78#2,4:667\n48#2,2:671\n71#2,4:673\n50#2,3:677\n78#2,4:680\n*S KotlinDebug\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9\n*L\n378#1:658,2\n378#1:660,4\n378#1:664,3\n378#1:667,4\n379#1:671,2\n379#1:673,4\n379#1:677,3\n379#1:680,4\n*E\n"})
    public static final class C02139 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ GraphRequestProcessor $graphProcessor;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02139(GraphRequestProcessor graphRequestProcessor, Continuation<? super C02139> continuation) {
            super(1, continuation);
            this.$graphProcessor = graphRequestProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CaptureSessionState.this.new C02139(this.$graphProcessor, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02139) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$12, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CaptureSessionState$disconnect$12", m766f = "CaptureSessionState.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nCaptureSessionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,657:1\n48#2,2:658\n71#2,4:660\n50#2:664\n52#2:667\n78#2,4:668\n50#3,2:665\n*S KotlinDebug\n*F\n+ 1 CaptureSessionState.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12\n*L\n406#1:658,2\n406#1:660,4\n406#1:664\n406#1:667\n406#1:668,4\n407#1:665,2\n*E\n"})
    public static final class AnonymousClass12 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ ConfiguredCameraCaptureSession $captureSession;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass12(ConfiguredCameraCaptureSession configuredCameraCaptureSession, Continuation<? super AnonymousClass12> continuation) {
            super(1, continuation);
            this.$captureSession = configuredCameraCaptureSession;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CaptureSessionState.this.new AnonymousClass12(this.$captureSession, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass12) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(configuredCameraCaptureSession.getSession());
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
                        int finalizeSessionOnCloseBehavior = this.cameraGraphFlags.getFinalizeSessionOnCloseBehavior();
                        CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion companion = CameraGraph.Flags.FinalizeSessionOnCloseBehavior.INSTANCE;
                        if (!CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m1189equalsimpl0(finalizeSessionOnCloseBehavior, companion.m1192getIMMEDIATEBm6Tfm4())) {
                            if (CameraGraph.Flags.FinalizeSessionOnCloseBehavior.m1189equalsimpl0(finalizeSessionOnCloseBehavior, companion.m1194getTIMEOUTBm6Tfm4())) {
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

    public final void finalizeSession$camera_camera2_pipe(long delayMs) {
        List list;
        if (delayMs != 0) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CaptureSessionState$finalizeSession$1(delayMs, this, null), 3, null);
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
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m((AutoCloseable) it.next());
        }
    }

    public static /* synthetic */ void finalizeOutputsIfAvailable$default(CaptureSessionState captureSessionState, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        captureSessionState.finalizeOutputsIfAvailable(z);
    }

    private final void finalizeOutputsIfAvailable(boolean retryAllowed) {
        ConfiguredCameraCaptureSession configuredCameraCaptureSession;
        Map<StreamId, ? extends OutputConfigurationWrapper> map;
        Map<StreamId, ? extends Surface> map2;
        boolean z;
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
        long jMo1485nowvQl9yQU = this.timeSource.mo1485nowvQl9yQU();
        for (Map.Entry<StreamId, ? extends OutputConfigurationWrapper> entry : map.entrySet()) {
            int value = entry.getKey().getValue();
            OutputConfigurationWrapper value2 = entry.getValue();
            Surface surface = map2.get(StreamId.m1382boximpl(value));
            if (surface == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                return;
            }
            value2.addSurface(surface);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Map.Entry<StreamId, ? extends OutputConfigurationWrapper>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().getValue());
        }
        configuredCameraCaptureSession.getSession().finalizeOutputConfigurations(CollectionsKt.toList(linkedHashSet));
        synchronized (this.lock) {
            try {
                if (this.state == State.CREATED) {
                    this.activeStreamSurfaceMap.putAll(map2);
                    Iterator<Map.Entry<StreamId, ? extends Surface>> it2 = map2.entrySet().iterator();
                    while (true) {
                        z = true;
                        if (it2.hasNext()) {
                            Map.Entry<StreamId, ? extends Surface> next = it2.next();
                            int value3 = next.getKey().getValue();
                            Surface value4 = next.getValue();
                            CameraStream cameraStreamM1380getaKI5c8E = this.streamGraph.m1380getaKI5c8E(value3);
                            if (cameraStreamM1380getaKI5c8E == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            if (cameraStreamM1380getaKI5c8E.getOutputs().size() != 1) {
                                throw new IllegalStateException("Cannot finalize a multi-output stream!");
                            }
                            this.activeOutputSurfaceMap.put(OutputId.m1271boximpl(((OutputStream) CollectionsKt.single((List) cameraStreamM1380getaKI5c8E.getOutputs())).getId()), value4);
                        } else if (Log.INSTANCE.getINFO_LOGGABLE()) {
                            Timestamps timestamps2 = Timestamps.INSTANCE;
                            long jM1477constructorimpl = DurationNs.m1477constructorimpl(this.timeSource.mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                            StringBuilder sb = new StringBuilder();
                            sb.append("Finalized ");
                            ArrayList arrayList = new ArrayList(map.size());
                            Iterator<Map.Entry<StreamId, ? extends OutputConfigurationWrapper>> it3 = map.entrySet().iterator();
                            while (it3.hasNext()) {
                                arrayList.add(StreamId.m1382boximpl(it3.next().getKey().getValue()));
                            }
                            sb.append(arrayList);
                            sb.append(" for ");
                            sb.append(this);
                            sb.append(" in ");
                            Timestamps timestamps3 = Timestamps.INSTANCE;
                            sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / 1000000.0d)}, 1)));
                            android.util.Log.i("CXCP", sb.toString());
                        }
                    }
                } else {
                    z = false;
                }
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z && retryAllowed) {
            this.graphListener.onGraphModified(configuredCameraCaptureSession.getProcessor());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r9v1, types: [T, java.util.Map<androidx.camera.camera2.pipe.StreamId, ? extends android.view.Surface>] */
    /* JADX WARN: Type inference failed for: r9v2, types: [T, androidx.camera.camera2.pipe.compat.CameraDeviceWrapper] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object tryCreateCaptureSession(Continuation<? super Unit> continuation) {
        C02141 c02141;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        Log log;
        CaptureSessionFactory.Result resultCreate;
        LinkedHashMap linkedHashMap;
        if (continuation instanceof C02141) {
            c02141 = (C02141) continuation;
            int i = c02141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02141.label = i - Integer.MIN_VALUE;
            } else {
                c02141 = new C02141(continuation);
            }
        }
        Object obj = c02141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02141.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef2 = new Ref.ObjectRef();
                synchronized (this.lock) {
                    if (this.state != State.PENDING) {
                        return Unit.INSTANCE;
                    }
                    objectRef.element = this._surfaceMap;
                    ?? r9 = this._cameraDevice;
                    objectRef2.element = r9;
                    if (objectRef.element != 0 && r9 != 0) {
                        this.state = State.CREATING;
                        this.hasAttemptedCaptureSession = true;
                        Timestamps timestamps = Timestamps.INSTANCE;
                        this.sessionCreatingTimestamp = TimestampNs.m1487boximpl(this.timeSource.mo1485nowvQl9yQU());
                        Unit unit = Unit.INSTANCE;
                        SessionSequencer sessionSequencer = this.sessionSequencer;
                        if (sessionSequencer != null) {
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Awaiting session lock");
                            }
                            c02141.L$0 = objectRef;
                            c02141.L$1 = objectRef2;
                            c02141.label = 1;
                            if (sessionSequencer.awaitSessionLock(c02141) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            objectRef3 = objectRef;
                            objectRef4 = objectRef2;
                        }
                        log = Log.INSTANCE;
                        if (log.getINFO_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder("Creating CameraCaptureSession from ");
                            CameraDeviceWrapper cameraDeviceWrapper = (CameraDeviceWrapper) objectRef2.element;
                            String strMo1393getCameraIdDz_R5H8 = cameraDeviceWrapper != null ? cameraDeviceWrapper.mo1393getCameraIdDz_R5H8() : null;
                            sb.append((Object) (strMo1393getCameraIdDz_R5H8 == null ? "null" : CameraId.m1213toStringimpl(strMo1393getCameraIdDz_R5H8)));
                            sb.append(" using ");
                            sb.append(this);
                            sb.append(" with ");
                            sb.append(objectRef.element);
                            android.util.Log.i("CXCP", sb.toString());
                        }
                        Debug debug = Debug.INSTANCE;
                        StringBuilder sb2 = new StringBuilder("CameraDevice-");
                        CameraDeviceWrapper cameraDeviceWrapper2 = (CameraDeviceWrapper) objectRef2.element;
                        sb2.append(cameraDeviceWrapper2 == null ? cameraDeviceWrapper2.mo1393getCameraIdDz_R5H8() : null);
                        sb2.append("#createCaptureSession");
                        Trace.beginSection(sb2.toString());
                        resultCreate = this.captureSessionFactory.create((CameraDeviceWrapper) objectRef2.element, (Map) objectRef.element, this);
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
                                    this.activeStreamSurfaceMap.putAll((Map) objectRef.element);
                                    this.activeOutputSurfaceMap.putAll(((CaptureSessionFactory.Result.Success) resultCreate).getOutputSurfaceMap());
                                    Map<StreamId, OutputConfigurationWrapper> deferred = ((CaptureSessionFactory.Result.Success) resultCreate).getDeferred();
                                    if (!deferred.isEmpty()) {
                                        if (log.getINFO_LOGGABLE()) {
                                            android.util.Log.i("CXCP", "Created " + this + " with " + CollectionsKt.toList(((Map) objectRef.element).keySet()) + ". Waiting to finalize " + CollectionsKt.toList(deferred.keySet()));
                                        }
                                        this.pendingOutputMap = deferred;
                                        Map<StreamId, ? extends Surface> map = this._surfaceMap;
                                        if (map != null) {
                                            linkedHashMap = new LinkedHashMap();
                                            for (Map.Entry<StreamId, ? extends Surface> entry : map.entrySet()) {
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            objectRef4 = (Ref.ObjectRef) c02141.L$1;
            objectRef3 = (Ref.ObjectRef) c02141.L$0;
            ResultKt.throwOnFailure(obj);
            Trace.beginSection(sb2.toString());
            resultCreate = this.captureSessionFactory.create((CameraDeviceWrapper) objectRef2.element, (Map) objectRef.element, this);
            Trace.endSection();
            if (resultCreate instanceof CaptureSessionFactory.Result.Success) {
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
        objectRef = objectRef3;
        objectRef2 = objectRef4;
        log = Log.INSTANCE;
        if (log.getINFO_LOGGABLE()) {
        }
        Debug debug2 = Debug.INSTANCE;
        StringBuilder sb22 = new StringBuilder("CameraDevice-");
        CameraDeviceWrapper cameraDeviceWrapper22 = (CameraDeviceWrapper) objectRef2.element;
        sb22.append(cameraDeviceWrapper22 == null ? cameraDeviceWrapper22.mo1393getCameraIdDz_R5H8() : null);
        sb22.append("#createCaptureSession");
    }

    private final void updateTrackedSurfaces(Map<StreamId, ? extends Surface> oldSurfaceMap, Map<StreamId, ? extends Surface> newSurfaceMap) throws Exception {
        Set set = CollectionsKt.toSet(oldSurfaceMap.values());
        Set set2 = CollectionsKt.toSet(newSurfaceMap.values());
        for (Surface surface : SetsKt.minus(set, (Iterable) set2)) {
            AutoCloseable autoCloseableRemove = this._surfaceTokenMap.remove(surface);
            if (autoCloseableRemove != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(autoCloseableRemove);
            } else {
                autoCloseableRemove = null;
            }
            if (autoCloseableRemove == null) {
                LifecycleRegistry$$ExternalSyntheticBUOutline0.m150m("Surface ", surface, " doesn't have a matching surface token!");
                return;
            }
        }
        for (Surface surface2 : SetsKt.minus(set2, (Iterable) set)) {
            this._surfaceTokenMap.put(surface2, this.cameraSurfaceManager.registerSurface$camera_camera2_pipe(surface2));
        }
    }

    public String toString() {
        return "CaptureSessionState-" + this.debugId;
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0082\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "session", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "processor", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;", "captureSequenceProcessor", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "getSession", "()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "getProcessor", "()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;", "getCaptureSequenceProcessor", "()Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ConfiguredCameraCaptureSession {
        private final Camera2CaptureSequenceProcessor captureSequenceProcessor;
        private final GraphRequestProcessor processor;
        private final CameraCaptureSessionWrapper session;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConfiguredCameraCaptureSession)) {
                return false;
            }
            ConfiguredCameraCaptureSession configuredCameraCaptureSession = (ConfiguredCameraCaptureSession) other;
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

        public ConfiguredCameraCaptureSession(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, GraphRequestProcessor graphRequestProcessor, Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
            this.session = cameraCaptureSessionWrapper;
            this.processor = graphRequestProcessor;
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "CAPTURE_SESSION_TIMEOUT_MS", _UrlKt.FRAGMENT_ENCODE_SET, "ABORT_CAPTURES_TIMEOUT_MS", "CLOSE_SESSION_TIMEOUT_MS", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
