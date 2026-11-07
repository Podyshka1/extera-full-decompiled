package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.ProcessingQueue;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import java.io.Closeable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b&\b\u0000\u0018\u0000 \u0085\u00012\u00020\u0001:\u0004\u0086\u0001\u0085\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001e\u0010\u0017\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0082@¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00192\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010!\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J-\u0010$\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020#H\u0002¢\u0006\u0004\b$\u0010%J/\u0010'\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\b\b\u0002\u0010&\u001a\u00020\u001fH\u0002¢\u0006\u0004\b'\u0010(J-\u0010*\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020)H\u0002¢\u0006\u0004\b*\u0010+J-\u0010-\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020,H\u0002¢\u0006\u0004\b-\u0010.J.\u00100\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020/H\u0082@¢\u0006\u0004\b0\u00101J%\u00102\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u0019H\u0002¢\u0006\u0004\b2\u00103J%\u00104\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u001c\u001a\u00020\u0019H\u0002¢\u0006\u0004\b4\u00103J\u001e\u00105\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0082@¢\u0006\u0004\b5\u0010\u0018J\u000f\u00106\u001a\u00020\u001fH\u0002¢\u0006\u0004\b6\u00107J\u001d\u0010:\u001a\u00020\u00162\f\u00109\u001a\b\u0012\u0004\u0012\u0002080\bH\u0002¢\u0006\u0004\b:\u0010;J\u001d\u0010=\u001a\u00020\u00162\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\bH\u0002¢\u0006\u0004\b=\u0010;J;\u0010@\u001a\u00020\u001f2\u0006\u0010>\u001a\u00020\u001f2\f\u00109\u001a\b\u0012\u0004\u0012\u0002080\b2\u0014\b\u0002\u0010?\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002¢\u0006\u0004\b@\u0010AJ\u001b\u0010B\u001a\u00020\u001f2\f\u00109\u001a\b\u0012\u0004\u0012\u0002080\b¢\u0006\u0004\bB\u0010CJ!\u0010E\u001a\u00020\u001f2\u0012\u0010D\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\u0004\bE\u0010FJ\r\u0010G\u001a\u00020\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0016H\u0016¢\u0006\u0004\bI\u0010HJ\u000f\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bK\u0010LR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010MR \u0010\u0006\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010NR \u0010\u0007\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010NR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010OR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010OR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010PR\u0014\u0010Q\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010PR\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00140R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0014\u0010U\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010W\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010Z\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010\\\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\"\u0010^\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b^\u0010NR\"\u0010_\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b_\u0010NR\u001c\u0010`\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b`\u0010OR\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010d\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010]R\"\u0010e\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010NR\"\u0010f\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010NR\"\u0010g\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010NR\u001c\u0010h\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010OR\u0018\u0010i\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010[R(\u0010o\u001a\u0004\u0018\u00010Y2\b\u0010j\u001a\u0004\u0018\u00010Y8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR(\u0010t\u001a\u0004\u0018\u0001082\b\u0010j\u001a\u0004\u0018\u0001088F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR<\u0010y\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0012\u0010j\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR<\u0010|\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0012\u0010j\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bz\u0010v\"\u0004\b{\u0010xR1\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010j\u001a\b\u0012\u0004\u0012\u00020\t0\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b}\u0010~\"\u0004\b\u007f\u0010;R(\u0010\u0084\u0001\u001a\u00020\u001f2\u0006\u0010j\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\u000f\u001a\u0005\b\u0081\u0001\u00107\"\u0006\b\u0082\u0001\u0010\u0083\u0001¨\u0006\u0087\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphLoop;", "Ljava/io/Closeable;", "Landroidx/camera/camera2/pipe/CameraGraphId;", "cameraGraphId", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "defaultParameters", "requiredParameters", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request$Listener;", "requiredListeners", "Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;", "listeners", "Lkotlinx/coroutines/CoroutineScope;", "shutdownScope", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "<init>", "(Landroidx/camera/camera2/pipe/CameraGraphId;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/graph/GraphCommand;", "commands", _UrlKt.FRAGMENT_ENCODE_SET, "process", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "selectGraphCommand", "(Ljava/util/List;)I", "idx", "Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;", "command", _UrlKt.FRAGMENT_ENCODE_SET, "repeatAllowed", "processCapture", "(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;Z)V", "Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;", "processTrigger", "(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;)V", "captureAllowed", "processRepeat", "(Ljava/util/List;IZ)V", "Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;", "processParameters", "(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;)V", "Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;", "processListeners", "(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;)V", "Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;", "processRequestProcessor", "(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processStop", "(Ljava/util/List;I)V", "processAbort", "processShutdown", "reissueRepeatingRequest", "()Z", "Landroidx/camera/camera2/pipe/Request;", "requests", "abortRequests", "(Ljava/util/List;)V", "unprocessedCommands", "finalizeUnprocessedCommands", "isRepeating", "oneTimeRequiredParameters", "buildAndSubmit", "(ZLjava/util/List;Ljava/util/Map;)Z", "submit", "(Ljava/util/List;)Z", "parameters", "trigger", "(Ljava/util/Map;)Z", "invalidate", "()V", "close", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/CameraGraphId;", "Ljava/util/Map;", "Ljava/util/List;", "Lkotlinx/coroutines/CoroutineScope;", "graphLoopScope", "Landroidx/camera/camera2/pipe/core/ProcessingQueue;", "processingQueue", "Landroidx/camera/camera2/pipe/core/ProcessingQueue;", "lock", "Ljava/lang/Object;", "closed", "Z", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "_requestProcessor", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "_repeatingRequest", "Landroidx/camera/camera2/pipe/Request;", "_graphParameters", "_graph3AParameters", "_requestListeners", "Lkotlinx/atomicfu/AtomicBoolean;", "_captureProcessingEnabled", "Lkotlinx/atomicfu/AtomicBoolean;", "currentRepeatingRequest", "currentGraphParameters", "currentGraph3AParameters", "currentRequiredParameters", "currentRequestListeners", "currentRequestProcessor", "value", "getRequestProcessor", "()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "setRequestProcessor", "(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V", "requestProcessor", "getRepeatingRequest", "()Landroidx/camera/camera2/pipe/Request;", "setRepeatingRequest", "(Landroidx/camera/camera2/pipe/Request;)V", "repeatingRequest", "getGraphParameters", "()Ljava/util/Map;", "setGraphParameters", "(Ljava/util/Map;)V", "graphParameters", "getGraph3AParameters", "setGraph3AParameters", "graph3AParameters", "getRequestListeners", "()Ljava/util/List;", "setRequestListeners", "requestListeners", "getCaptureProcessingEnabled", "setCaptureProcessingEnabled", "(Z)V", "captureProcessingEnabled", "Companion", "Listener", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphLoop.kt\nandroidx/camera/camera2/pipe/graph/GraphLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 GraphLoop.kt\nandroidx/camera/camera2/pipe/graph/GraphLoop$Companion\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,731:1\n1#2:732\n694#3,11:733\n694#3,11:744\n694#3,11:755\n694#3,11:766\n694#3,11:777\n694#3,11:788\n71#4,2:799\n71#4,2:801\n71#4,2:803\n*S KotlinDebug\n*F\n+ 1 GraphLoop.kt\nandroidx/camera/camera2/pipe/graph/GraphLoop\n*L\n417#1:733,11\n453#1:744,11\n465#1:755,11\n476#1:766,11\n517#1:777,11\n535#1:788,11\n668#1:799,2\n671#1:801,2\n673#1:803,2\n*E\n"})
public final class GraphLoop implements Closeable {
    private final AtomicBoolean _captureProcessingEnabled;
    private Map<?, ? extends Object> _graph3AParameters;
    private Map<?, ? extends Object> _graphParameters;
    private Request _repeatingRequest;
    private List<? extends Request.Listener> _requestListeners;
    private GraphRequestProcessor _requestProcessor;
    private final CameraGraphId cameraGraphId;
    private volatile boolean closed;
    private Map<?, ? extends Object> currentGraph3AParameters;
    private Map<?, ? extends Object> currentGraphParameters;
    private Request currentRepeatingRequest;
    private List<? extends Request.Listener> currentRequestListeners;
    private GraphRequestProcessor currentRequestProcessor;
    private Map<?, ? extends Object> currentRequiredParameters;
    private final Map<?, Object> defaultParameters;
    private final CoroutineScope graphLoopScope;
    private final List<Listener> listeners;
    private final Object lock;
    private final ProcessingQueue<GraphCommand> processingQueue;
    private final List<Request.Listener> requiredListeners;
    private final Map<?, Object> requiredParameters;
    private final CoroutineScope shutdownScope;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;", _UrlKt.FRAGMENT_ENCODE_SET, "onStopRepeating", _UrlKt.FRAGMENT_ENCODE_SET, "onGraphStopped", "onGraphShutdown", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Listener {
        void onGraphShutdown();

        void onGraphStopped();

        void onStopRepeating();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$processRequestProcessor$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.GraphLoop", m921f = "GraphLoop.kt", m922i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2}, m923l = {479, 480, 488}, m924m = "processRequestProcessor", m925n = {"commands", "command", "commandsRemoved", "$this$removeUpTo$iv", "it", "a$iv", "b$iv", "commands", "command", "commandsRemoved", "$this$removeUpTo$iv", "a$iv", "b$iv", "commands", "command", "commandsRemoved"}, m926s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "L$0", "L$1", "L$2"}, m927v = 1)
    public static final class C02421 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public C02421(Continuation<? super C02421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphLoop.this.processRequestProcessor(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$processShutdown$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.GraphLoop", m921f = "GraphLoop.kt", m922i = {0, 1, 1, 1, 2, 2}, m923l = {566, 572, 573}, m924m = "processShutdown", m925n = {"commands", "commands", "command", "idx", "commands", "idx"}, m926s = {"L$0", "L$0", "L$1", "I$0", "L$0", "I$0"}, m927v = 1)
    public static final class C02431 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C02431(Continuation<? super C02431> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphLoop.this.processShutdown(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GraphLoop(CameraGraphId cameraGraphId, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, List<? extends Request.Listener> list, List<? extends Listener> list2, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher) {
        this.cameraGraphId = cameraGraphId;
        this.defaultParameters = map;
        this.requiredParameters = map2;
        this.requiredListeners = list;
        this.listeners = list2;
        this.shutdownScope = coroutineScope;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(new CoroutineName("CXCP-GraphLoop")));
        this.graphLoopScope = CoroutineScope;
        this.processingQueue = ProcessingQueue.INSTANCE.processIn(new ProcessingQueue(0, new GraphLoop$processingQueue$1(this), new GraphLoop$processingQueue$2(this), 1, null), CoroutineScope);
        this.lock = new Object();
        this._graphParameters = MapsKt.emptyMap();
        this._graph3AParameters = MapsKt.emptyMap();
        this._requestListeners = CollectionsKt.emptyList();
        this._captureProcessingEnabled = AtomicFU.atomic(true);
        this.currentGraphParameters = MapsKt.emptyMap();
        this.currentGraph3AParameters = MapsKt.emptyMap();
        this.currentRequiredParameters = map2;
        this.currentRequestListeners = list;
    }

    public final void setRequestProcessor(GraphRequestProcessor graphRequestProcessor) {
        synchronized (this.lock) {
            GraphRequestProcessor graphRequestProcessor2 = this._requestProcessor;
            this._requestProcessor = graphRequestProcessor;
            if (this.closed) {
                this._requestProcessor = null;
                if (graphRequestProcessor != null) {
                    BuildersKt__Builders_commonKt.launch$default(this.shutdownScope, null, null, new GraphLoop$requestProcessor$2$1(graphRequestProcessor, null), 3, null);
                }
                return;
            }
            if (graphRequestProcessor2 != graphRequestProcessor) {
                this.processingQueue.tryEmit(new GraphCommand.RequestProcessor(graphRequestProcessor2, graphRequestProcessor));
            }
            Unit unit = Unit.INSTANCE;
            if (graphRequestProcessor == null) {
                int size = this.listeners.size();
                for (int i = 0; i < size; i++) {
                    this.listeners.get(i).onGraphStopped();
                }
            }
        }
    }

    public final Request getRepeatingRequest() {
        Request request;
        synchronized (this.lock) {
            request = this._repeatingRequest;
        }
        return request;
    }

    public final void setRepeatingRequest(Request request) {
        synchronized (this.lock) {
            try {
                Request request2 = this._repeatingRequest;
                this._repeatingRequest = request;
                if (request2 != null || request != null) {
                    ProcessingQueue<GraphCommand> processingQueue = this.processingQueue;
                    if (request != null) {
                        processingQueue.tryEmit(new GraphCommand.Repeat(request));
                    } else {
                        processingQueue.tryEmit(GraphCommand.Stop.INSTANCE);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (request == null) {
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).onStopRepeating();
            }
        }
    }

    public final void setGraphParameters(Map<?, ? extends Object> map) {
        synchronized (this.lock) {
            this._graphParameters = map;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(map, this._graph3AParameters));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setGraph3AParameters(Map<?, ? extends Object> map) {
        synchronized (this.lock) {
            this._graph3AParameters = map;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(this._graphParameters, map));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setRequestListeners(List<? extends Request.Listener> list) {
        synchronized (this.lock) {
            this._requestListeners = list;
            this.processingQueue.tryEmit(new GraphCommand.Listeners(list));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean getCaptureProcessingEnabled() {
        return this._captureProcessingEnabled.getValue();
    }

    public final void setCaptureProcessingEnabled(boolean z) {
        this._captureProcessingEnabled.setValue(z);
        if (z) {
            invalidate();
        }
    }

    public final boolean submit(List<Request> requests) {
        if (this.processingQueue.tryEmit(new GraphCommand.Capture(requests))) {
            return true;
        }
        abortRequests(requests);
        return false;
    }

    public final boolean trigger(Map<?, ? extends Object> parameters) {
        if (getRepeatingRequest() == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Cannot submit parameters without an active repeating request!");
            return false;
        }
        return this.processingQueue.tryEmit(new GraphCommand.Trigger(parameters));
    }

    public final void invalidate() {
        this.processingQueue.tryEmit(GraphCommand.Invalidate.INSTANCE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                GraphRequestProcessor graphRequestProcessor = this._requestProcessor;
                if (graphRequestProcessor != null) {
                    BuildersKt__Builders_commonKt.launch$default(this.shutdownScope, null, null, new GraphLoop$close$1$1$1(graphRequestProcessor, null), 3, null);
                }
                this._requestProcessor = null;
                this.processingQueue.tryEmit(GraphCommand.Shutdown.INSTANCE);
                int size = this.listeners.size();
                for (int i = 0; i < size; i++) {
                    this.listeners.get(i).onGraphShutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(List<GraphCommand> list, Continuation<? super Unit> continuation) {
        int iSelectGraphCommand = selectGraphCommand(list);
        GraphCommand graphCommand = list.get(iSelectGraphCommand);
        if (Intrinsics.areEqual(graphCommand, GraphCommand.Invalidate.INSTANCE)) {
            list.remove(iSelectGraphCommand);
        } else {
            if (Intrinsics.areEqual(graphCommand, GraphCommand.Shutdown.INSTANCE)) {
                Object objProcessShutdown = processShutdown(list, continuation);
                return objProcessShutdown == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessShutdown : Unit.INSTANCE;
            }
            if (Intrinsics.areEqual(graphCommand, GraphCommand.Abort.INSTANCE)) {
                processAbort(list, iSelectGraphCommand);
            } else if (Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE)) {
                processStop(list, iSelectGraphCommand);
            } else {
                if (graphCommand instanceof GraphCommand.RequestProcessor) {
                    Object objProcessRequestProcessor = processRequestProcessor(list, iSelectGraphCommand, (GraphCommand.RequestProcessor) graphCommand, continuation);
                    return objProcessRequestProcessor == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestProcessor : Unit.INSTANCE;
                }
                if (graphCommand instanceof GraphCommand.Capture) {
                    processCapture$default(this, list, iSelectGraphCommand, (GraphCommand.Capture) graphCommand, false, 8, null);
                } else if (graphCommand instanceof GraphCommand.Trigger) {
                    processTrigger(list, iSelectGraphCommand, (GraphCommand.Trigger) graphCommand);
                } else if (graphCommand instanceof GraphCommand.Parameters) {
                    processParameters(list, iSelectGraphCommand, (GraphCommand.Parameters) graphCommand);
                } else if (graphCommand instanceof GraphCommand.Listeners) {
                    processListeners(list, iSelectGraphCommand, (GraphCommand.Listeners) graphCommand);
                } else {
                    if (!(graphCommand instanceof GraphCommand.Repeat)) {
                        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                        return null;
                    }
                    processRepeat$default(this, list, iSelectGraphCommand, false, 4, null);
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int selectGraphCommand(List<GraphCommand> commands) {
        if (commands.size() == 1) {
            return 0;
        }
        List<GraphCommand> list = commands;
        int size = list.size() - 1;
        int i = -1;
        if (size >= 0) {
            while (true) {
                int i2 = size - 1;
                GraphCommand graphCommand = commands.get(size);
                if (Intrinsics.areEqual(graphCommand, GraphCommand.Abort.INSTANCE) || Intrinsics.areEqual(graphCommand, GraphCommand.Invalidate.INSTANCE) || Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE) || Intrinsics.areEqual(graphCommand, GraphCommand.Shutdown.INSTANCE)) {
                    break;
                }
                if ((graphCommand instanceof GraphCommand.RequestProcessor) && i < 0) {
                    i = size;
                }
                if (i2 < 0) {
                    break;
                }
                size = i2;
            }
        }
        if (i >= 0) {
            return i;
        }
        int size2 = list.size();
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < size2; i5++) {
            GraphCommand graphCommand2 = commands.get(i5);
            if (!(graphCommand2 instanceof GraphCommand.Parameters)) {
                if (!(graphCommand2 instanceof GraphCommand.Listeners)) {
                    if (!(graphCommand2 instanceof GraphCommand.Repeat)) {
                        break;
                    }
                } else {
                    i4 = i5;
                }
            } else {
                i3 = i5;
            }
        }
        if (i3 >= 0) {
            return i3;
        }
        if (i4 >= 0) {
            return i4;
        }
        if (this.currentRepeatingRequest != null && getCaptureProcessingEnabled()) {
            int size3 = list.size();
            for (int i6 = 0; i6 < size3; i6++) {
                GraphCommand graphCommand3 = commands.get(i6);
                if ((graphCommand3 instanceof GraphCommand.Capture) || (graphCommand3 instanceof GraphCommand.Trigger)) {
                    return i6;
                }
            }
        }
        int size4 = list.size();
        int i7 = -1;
        int i8 = 0;
        while (i8 < size4 && (commands.get(i8) instanceof GraphCommand.Repeat)) {
            int i9 = i8;
            i8++;
            i7 = i9;
        }
        if (i7 >= 0) {
            return i7;
        }
        return 0;
    }

    public static /* synthetic */ void processCapture$default(GraphLoop graphLoop, List list, int i, GraphCommand.Capture capture, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        graphLoop.processCapture(list, i, capture, z);
    }

    private final void processCapture(List<GraphCommand> commands, int idx, GraphCommand.Capture command, boolean repeatAllowed) {
        GraphLoop graphLoop;
        if (getCaptureProcessingEnabled()) {
            graphLoop = this;
            if (buildAndSubmit$default(graphLoop, false, command.getRequests(), null, 4, null)) {
                commands.remove(idx);
                return;
            }
        } else {
            graphLoop = this;
        }
        if (!repeatAllowed || idx <= 0) {
            return;
        }
        int i = idx - 1;
        if (!(commands.get(i) instanceof GraphCommand.Repeat)) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
        } else {
            graphLoop.processRepeat(commands, i, false);
        }
    }

    private final void processTrigger(List<GraphCommand> commands, int idx, GraphCommand.Trigger command) {
        Request request = this.currentRepeatingRequest;
        if (request == null && idx == 0) {
            commands.remove(idx);
            return;
        }
        if (getCaptureProcessingEnabled() && request != null && buildAndSubmit(false, CollectionsKt.listOf(request), command.getTriggerParameters())) {
            commands.remove(idx);
            return;
        }
        if (idx > 0) {
            int i = idx - 1;
            if (!(commands.get(i) instanceof GraphCommand.Repeat)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
            } else {
                processRepeat(commands, i, false);
            }
        }
    }

    public static /* synthetic */ void processRepeat$default(GraphLoop graphLoop, List list, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        graphLoop.processRepeat(list, i, z);
    }

    private final void processRepeat(List<GraphCommand> commands, int idx, boolean captureAllowed) {
        int i;
        GraphLoop graphLoop;
        int i2 = idx;
        while (true) {
            int i3 = 0;
            if (-1 < i2) {
                GraphCommand graphCommand = commands.get(i2);
                if (graphCommand instanceof GraphCommand.Repeat) {
                    GraphCommand.Repeat repeat = (GraphCommand.Repeat) graphCommand;
                    graphLoop = this;
                    if (buildAndSubmit$default(graphLoop, true, CollectionsKt.listOf(repeat.getRequest()), null, 4, null)) {
                        graphLoop.currentRepeatingRequest = repeat.getRequest();
                        commands.remove(i2);
                        while (i3 < i2) {
                            if (commands.get(i3) instanceof GraphCommand.Repeat) {
                                commands.remove(i3);
                                i2--;
                            } else {
                                i3++;
                            }
                        }
                        return;
                    }
                } else {
                    graphLoop = this;
                }
                i2--;
                this = graphLoop;
            } else {
                GraphLoop graphLoop2 = this;
                if (!captureAllowed || (i = idx + 1) >= commands.size()) {
                    return;
                }
                GraphCommand graphCommand2 = commands.get(i);
                if (graphCommand2 instanceof GraphCommand.Capture) {
                    graphLoop2.processCapture(commands, i, (GraphCommand.Capture) graphCommand2, false);
                    return;
                } else {
                    if (graphCommand2 instanceof GraphCommand.Trigger) {
                        graphLoop2.processTrigger(commands, i, (GraphCommand.Trigger) graphCommand2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void processParameters(List<GraphCommand> commands, int idx, GraphCommand.Parameters command) {
        Map<?, ? extends Object> mapBuild;
        this.currentGraphParameters = command.getGraphParameters();
        this.currentGraph3AParameters = command.getGraph3AParameters();
        if (command.getGraph3AParameters().isEmpty()) {
            mapBuild = this.requiredParameters;
        } else {
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            RequestsKt.putAllMetadata(mapCreateMapBuilder, command.getGraph3AParameters());
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.requiredParameters);
            mapBuild = MapsKt.build(mapCreateMapBuilder);
        }
        this.currentRequiredParameters = mapBuild;
        commands.remove(idx);
        int i = 0;
        while (i < idx) {
            if (commands.get(i) instanceof GraphCommand.Parameters) {
                commands.remove(i);
                idx--;
            } else {
                i++;
            }
        }
        reissueRepeatingRequest();
    }

    private final void processListeners(List<GraphCommand> commands, int idx, GraphCommand.Listeners command) {
        this.currentRequestListeners = CollectionsKt.distinct(CollectionsKt.plus((Collection) command.getListeners(), (Iterable) this.requiredListeners));
        commands.remove(idx);
        int i = 0;
        while (i < idx) {
            if (commands.get(i) instanceof GraphCommand.Listeners) {
                commands.remove(i);
                idx--;
            } else {
                i++;
            }
        }
        reissueRepeatingRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00dc -> B:37:0x00f7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f5 -> B:36:0x00f6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0104 -> B:39:0x0105). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestProcessor(List<GraphCommand> list, int i, GraphCommand.RequestProcessor requestProcessor, Continuation<? super Unit> continuation) {
        C02421 c02421;
        int i2;
        GraphCommand.RequestProcessor requestProcessor2;
        Ref.IntRef intRef;
        C02421 c024212;
        int i3;
        List<GraphCommand> list2;
        List<GraphCommand> list3;
        List<GraphCommand> list4;
        GraphCommand graphCommand;
        GraphCommand.RequestProcessor requestProcessor3;
        List<GraphCommand> list5;
        int i4;
        GraphRequestProcessor graphRequestProcessor;
        GraphCommand.RequestProcessor requestProcessor4;
        Ref.IntRef intRef2;
        List<GraphCommand> list6;
        GraphCommand graphCommand2;
        GraphCommand.RequestProcessor requestProcessor5;
        Ref.IntRef intRef3;
        boolean z;
        if (continuation instanceof C02421) {
            c02421 = (C02421) continuation;
            int i5 = c02421.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                c02421.label = i5 - Integer.MIN_VALUE;
            } else {
                c02421 = new C02421(continuation);
            }
        }
        Object obj = c02421.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = c02421.label;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef4 = new Ref.IntRef();
            intRef4.element = 1;
            list.remove(i);
            i2 = i;
            requestProcessor2 = requestProcessor;
            intRef = intRef4;
            c024212 = c02421;
            i3 = 0;
            list2 = list;
            list3 = list2;
            if (i3 >= i2) {
            }
            return coroutine_suspended;
        }
        if (i6 == 1) {
            i2 = c02421.I$1;
            i4 = c02421.I$0;
            graphCommand2 = (GraphCommand) c02421.L$4;
            list6 = (List) c02421.L$3;
            intRef2 = (Ref.IntRef) c02421.L$2;
            requestProcessor4 = (GraphCommand.RequestProcessor) c02421.L$1;
            list4 = (List) c02421.L$0;
            ResultKt.throwOnFailure(obj);
            GraphCommand.RequestProcessor requestProcessor6 = requestProcessor4;
            graphCommand = graphCommand2;
            list5 = list6;
            intRef = intRef2;
            requestProcessor3 = requestProcessor6;
            graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
            if (graphRequestProcessor != null) {
            }
            GraphCommand.RequestProcessor requestProcessor7 = requestProcessor3;
            i3 = i4;
            intRef.element++;
            requestProcessor2 = requestProcessor7;
            z = true;
            list2 = list5;
            c024212 = c02421;
            list3 = list4;
            if (z) {
            }
            if (i3 >= i2) {
            }
            return coroutine_suspended;
        }
        if (i6 != 2) {
            if (i6 != 3) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            intRef3 = (Ref.IntRef) c02421.L$2;
            requestProcessor5 = (GraphCommand.RequestProcessor) c02421.L$1;
            list3 = (List) c02421.L$0;
            ResultKt.throwOnFailure(obj);
            intRef = intRef3;
            requestProcessor2 = requestProcessor5;
            this.currentRequestProcessor = requestProcessor2.getNew();
            if (!reissueRepeatingRequest()) {
                Request request = this.currentRepeatingRequest;
                if (request != null) {
                    list3.add(0, new GraphCommand.Repeat(request));
                    if (intRef.element == 1) {
                        list3.add(GraphCommand.Invalidate.INSTANCE);
                    }
                }
                this.currentRepeatingRequest = null;
            }
            return Unit.INSTANCE;
        }
        i2 = c02421.I$1;
        i4 = c02421.I$0;
        list5 = (List) c02421.L$3;
        intRef = (Ref.IntRef) c02421.L$2;
        requestProcessor3 = (GraphCommand.RequestProcessor) c02421.L$1;
        List<GraphCommand> list7 = (List) c02421.L$0;
        ResultKt.throwOnFailure(obj);
        list4 = list7;
        GraphCommand.RequestProcessor requestProcessor72 = requestProcessor3;
        i3 = i4;
        intRef.element++;
        requestProcessor2 = requestProcessor72;
        z = true;
        list2 = list5;
        c024212 = c02421;
        list3 = list4;
        if (z) {
            list2.remove(i3);
            i2--;
        } else {
            i3++;
        }
        if (i3 >= i2) {
            graphCommand = list2.get(i3);
            if (graphCommand instanceof GraphCommand.RequestProcessor) {
                GraphRequestProcessor old = ((GraphCommand.RequestProcessor) graphCommand).getOld();
                if (old != null) {
                    c024212.L$0 = list3;
                    c024212.L$1 = requestProcessor2;
                    c024212.L$2 = intRef;
                    c024212.L$3 = list2;
                    c024212.L$4 = graphCommand;
                    c024212.I$0 = i3;
                    c024212.I$1 = i2;
                    c024212.label = 1;
                    if (old.shutdown$camera_camera2_pipe(c024212) != coroutine_suspended) {
                        list4 = list3;
                        c02421 = c024212;
                        graphCommand2 = graphCommand;
                        requestProcessor4 = requestProcessor2;
                        i4 = i3;
                        intRef2 = intRef;
                        list6 = list2;
                        GraphCommand.RequestProcessor requestProcessor62 = requestProcessor4;
                        graphCommand = graphCommand2;
                        list5 = list6;
                        intRef = intRef2;
                        requestProcessor3 = requestProcessor62;
                        graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
                        if (graphRequestProcessor != null) {
                            c02421.L$0 = list4;
                            c02421.L$1 = requestProcessor3;
                            c02421.L$2 = intRef;
                            c02421.L$3 = list5;
                            c02421.L$4 = null;
                            c02421.I$0 = i4;
                            c02421.I$1 = i2;
                            c02421.label = 2;
                            if (graphRequestProcessor.shutdown$camera_camera2_pipe(c02421) != coroutine_suspended) {
                                list7 = list4;
                                list4 = list7;
                            }
                        }
                        GraphCommand.RequestProcessor requestProcessor722 = requestProcessor3;
                        i3 = i4;
                        intRef.element++;
                        requestProcessor2 = requestProcessor722;
                        z = true;
                        list2 = list5;
                        c024212 = c02421;
                        list3 = list4;
                        if (z) {
                        }
                        if (i3 >= i2) {
                        }
                    }
                } else {
                    int i7 = i3;
                    requestProcessor3 = requestProcessor2;
                    i4 = i7;
                    list4 = list3;
                    c02421 = c024212;
                    list5 = list2;
                    graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
                    if (graphRequestProcessor != null) {
                    }
                    GraphCommand.RequestProcessor requestProcessor7222 = requestProcessor3;
                    i3 = i4;
                    intRef.element++;
                    requestProcessor2 = requestProcessor7222;
                    z = true;
                    list2 = list5;
                    c024212 = c02421;
                    list3 = list4;
                    if (z) {
                    }
                    if (i3 >= i2) {
                    }
                }
            } else {
                z = false;
                if (z) {
                }
                if (i3 >= i2) {
                    GraphRequestProcessor old2 = requestProcessor2.getOld();
                    if (old2 != null) {
                        c024212.L$0 = list3;
                        c024212.L$1 = requestProcessor2;
                        c024212.L$2 = intRef;
                        c024212.L$3 = null;
                        c024212.L$4 = null;
                        c024212.label = 3;
                        if (old2.shutdown$camera_camera2_pipe(c024212) != coroutine_suspended) {
                            requestProcessor5 = requestProcessor2;
                            intRef3 = intRef;
                            intRef = intRef3;
                            requestProcessor2 = requestProcessor5;
                        }
                    }
                    this.currentRequestProcessor = requestProcessor2.getNew();
                    if (!reissueRepeatingRequest()) {
                    }
                    return Unit.INSTANCE;
                }
            }
        }
        return coroutine_suspended;
    }

    private final void processStop(List<GraphCommand> commands, int idx) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.stopRepeating$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        commands.remove(idx);
        int i = 0;
        while (i < idx) {
            GraphCommand graphCommand = commands.get(i);
            if (Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE) || (graphCommand instanceof GraphCommand.Repeat)) {
                commands.remove(i);
                idx--;
            } else {
                i++;
            }
        }
    }

    private final void processAbort(List<GraphCommand> commands, int idx) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.abortCaptures$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        commands.remove(idx);
        int i = 0;
        while (i < idx) {
            GraphCommand graphCommand = commands.get(i);
            if (!Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE) && !Intrinsics.areEqual(graphCommand, GraphCommand.Abort.INSTANCE) && !(graphCommand instanceof GraphCommand.Repeat) && !(graphCommand instanceof GraphCommand.Trigger)) {
                if (graphCommand instanceof GraphCommand.Capture) {
                    abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
                } else {
                    i++;
                }
            }
            commands.remove(i);
            idx--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
    
        if (r12.shutdown$camera_camera2_pipe(r0) == r1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e7, code lost:
    
        if (r12.shutdown$camera_camera2_pipe(r0) == r1) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ae -> B:48:0x00ec). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00d7 -> B:47:0x00ea). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e7 -> B:47:0x00ea). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processShutdown(List<GraphCommand> list, Continuation<? super Unit> continuation) {
        C02431 c02431;
        List<GraphCommand> list2;
        int size;
        GraphCommand graphCommand;
        int i;
        List<GraphCommand> list3;
        GraphRequestProcessor graphRequestProcessor;
        GraphCommand graphCommand2;
        if (continuation instanceof C02431) {
            c02431 = (C02431) continuation;
            int i2 = c02431.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c02431.label = i2 - Integer.MIN_VALUE;
            } else {
                c02431 = new C02431(continuation);
            }
        }
        Object obj = c02431.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c02431.label;
        int i4 = 0;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            this.currentRepeatingRequest = null;
            this.currentGraphParameters = MapsKt.emptyMap();
            this.currentGraph3AParameters = MapsKt.emptyMap();
            int size2 = list.size();
            for (int i5 = 0; i5 < size2; i5++) {
                GraphCommand graphCommand3 = list.get(i5);
                if (graphCommand3 instanceof GraphCommand.Capture) {
                    abortRequests(((GraphCommand.Capture) graphCommand3).getRequests());
                }
            }
            GraphRequestProcessor graphRequestProcessor2 = this.currentRequestProcessor;
            if (graphRequestProcessor2 != null) {
                c02431.L$0 = list;
                c02431.label = 1;
            }
        } else if (i3 == 1) {
            list = (List) c02431.L$0;
            ResultKt.throwOnFailure(obj);
        } else if (i3 == 2) {
            size = c02431.I$1;
            i = c02431.I$0;
            graphCommand2 = (GraphCommand) c02431.L$1;
            list2 = (List) c02431.L$0;
            ResultKt.throwOnFailure(obj);
            graphCommand = graphCommand2;
            list3 = list2;
            graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
            if (graphRequestProcessor != null) {
            }
            list2 = list3;
            i4 = i;
            i4++;
            if (i4 >= size) {
            }
        } else {
            if (i3 != 3) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            size = c02431.I$1;
            i = c02431.I$0;
            list3 = (List) c02431.L$0;
            ResultKt.throwOnFailure(obj);
            list2 = list3;
            i4 = i;
            i4++;
            if (i4 >= size) {
                graphCommand = list2.get(i4);
                if (graphCommand instanceof GraphCommand.RequestProcessor) {
                    GraphRequestProcessor old = ((GraphCommand.RequestProcessor) graphCommand).getOld();
                    if (old != null) {
                        c02431.L$0 = list2;
                        c02431.L$1 = graphCommand;
                        c02431.I$0 = i4;
                        c02431.I$1 = size;
                        c02431.label = 2;
                        if (old.shutdown$camera_camera2_pipe(c02431) != coroutine_suspended) {
                            i = i4;
                            graphCommand2 = graphCommand;
                            graphCommand = graphCommand2;
                            list3 = list2;
                            graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
                            if (graphRequestProcessor != null) {
                                c02431.L$0 = list3;
                                c02431.L$1 = null;
                                c02431.I$0 = i;
                                c02431.I$1 = size;
                                c02431.label = 3;
                            }
                            list2 = list3;
                            i4 = i;
                        }
                        return coroutine_suspended;
                    }
                    i = i4;
                    list3 = list2;
                    graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
                    if (graphRequestProcessor != null) {
                    }
                    list2 = list3;
                    i4 = i;
                }
                i4++;
                if (i4 >= size) {
                    list2.clear();
                    CoroutineScopeKt.cancel$default(this.graphLoopScope, null, 1, null);
                    return Unit.INSTANCE;
                }
            }
        }
        this.currentRequestProcessor = null;
        list2 = list;
        size = list.size();
        if (i4 >= size) {
        }
    }

    private final boolean reissueRepeatingRequest() {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor == null) {
            return false;
        }
        Request request = this.currentRepeatingRequest;
        return Intrinsics.areEqual(request != null ? Boolean.valueOf(graphRequestProcessor.submit$camera_camera2_pipe(true, CollectionsKt.listOf(request), this.defaultParameters, this.currentGraphParameters, this.currentRequiredParameters, this.currentRequestListeners)) : null, Boolean.TRUE);
    }

    private final void abortRequests(List<Request> requests) {
        List<Request> list = requests;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Request request = requests.get(i);
            int size2 = this.currentRequestListeners.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.currentRequestListeners.get(i2).onAborted(request);
            }
        }
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Request request2 = requests.get(i3);
            int size4 = request2.getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                request2.getListeners().get(i4).onAborted(request2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finalizeUnprocessedCommands(List<? extends GraphCommand> unprocessedCommands) {
        for (GraphCommand graphCommand : unprocessedCommands) {
            if (graphCommand instanceof GraphCommand.Capture) {
                abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
            } else if (graphCommand instanceof GraphCommand.RequestProcessor) {
                BuildersKt__Builders_commonKt.launch$default(this.shutdownScope, null, CoroutineStart.UNDISPATCHED, new C02411(graphCommand, null), 1, null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$finalizeUnprocessedCommands$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.graph.GraphLoop$finalizeUnprocessedCommands$1", m921f = "GraphLoop.kt", m922i = {}, m923l = {630, 631}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C02411 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ GraphCommand $command;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02411(GraphCommand graphCommand, Continuation<? super C02411> continuation) {
            super(2, continuation);
            this.$command = graphCommand;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02411(this.$command, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
        
            if (r5.shutdown$camera_camera2_pipe(r4) == r0) goto L19;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                GraphRequestProcessor old = ((GraphCommand.RequestProcessor) this.$command).getOld();
                if (old != null) {
                    this.label = 1;
                    if (old.shutdown$camera_camera2_pipe(this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            GraphRequestProcessor graphRequestProcessor = ((GraphCommand.RequestProcessor) this.$command).getNew();
            if (graphRequestProcessor != null) {
                this.label = 2;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean buildAndSubmit$default(GraphLoop graphLoop, boolean z, List list, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return graphLoop.buildAndSubmit(z, list, map);
    }

    private final boolean buildAndSubmit(boolean isRepeating, List<Request> requests, Map<?, ? extends Object> oneTimeRequiredParameters) throws Exception {
        Map<?, ? extends Object> mapBuild;
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor == null) {
            return false;
        }
        Map<?, ? extends Object> map = this.defaultParameters;
        Map<?, ? extends Object> map2 = this.currentGraphParameters;
        if (oneTimeRequiredParameters.isEmpty()) {
            mapBuild = this.currentRequiredParameters;
        } else {
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.currentGraph3AParameters);
            RequestsKt.putAllMetadata(mapCreateMapBuilder, oneTimeRequiredParameters);
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.requiredParameters);
            Unit unit = Unit.INSTANCE;
            mapBuild = MapsKt.build(mapCreateMapBuilder);
        }
        boolean zSubmit$camera_camera2_pipe = graphRequestProcessor.submit$camera_camera2_pipe(isRepeating, requests, map, map2, mapBuild, this.currentRequestListeners);
        if (!zSubmit$camera_camera2_pipe) {
            if (isRepeating) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to repeat with " + CollectionsKt.single((List) requests));
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (oneTimeRequiredParameters.isEmpty()) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to submit capture with " + requests);
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to trigger with " + CollectionsKt.single((List) requests) + " and " + oneTimeRequiredParameters);
            }
        }
        return zSubmit$camera_camera2_pipe;
    }

    public String toString() {
        return "GraphLoop(" + this.cameraGraphId + ')';
    }
}
