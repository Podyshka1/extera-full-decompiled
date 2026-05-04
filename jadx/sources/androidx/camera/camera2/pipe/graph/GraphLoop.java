package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.ProcessingQueue;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import java.io.Closeable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphLoop implements Closeable {
    public static final Companion Companion = new Companion(null);
    private final AtomicBoolean _captureProcessingEnabled;
    private Map _graph3AParameters;
    private Map _graphParameters;
    private Request _repeatingRequest;
    private List _requestListeners;
    private GraphRequestProcessor _requestProcessor;
    private final CameraGraphId cameraGraphId;
    private volatile boolean closed;
    private Map currentGraph3AParameters;
    private Map currentGraphParameters;
    private Request currentRepeatingRequest;
    private List currentRequestListeners;
    private GraphRequestProcessor currentRequestProcessor;
    private Map currentRequiredParameters;
    private final Map defaultParameters;
    private final CoroutineScope graphLoopScope;
    private final List listeners;
    private final Object lock;
    private final ProcessingQueue processingQueue;
    private final List requiredListeners;
    private final Map requiredParameters;
    private final CoroutineScope shutdownScope;

    public interface Listener {
        void onGraphShutdown();

        void onGraphStopped();

        void onStopRepeating();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$processRequestProcessor$1 */
    static final class C02421 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C02421(Continuation continuation) {
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
    static final class C02431 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02431(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphLoop.this.processShutdown(null, this);
        }
    }

    public GraphLoop(CameraGraphId cameraGraphId, Map defaultParameters, Map requiredParameters, List requiredListeners, List listeners, CoroutineScope shutdownScope, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(cameraGraphId, "cameraGraphId");
        Intrinsics.checkNotNullParameter(defaultParameters, "defaultParameters");
        Intrinsics.checkNotNullParameter(requiredParameters, "requiredParameters");
        Intrinsics.checkNotNullParameter(requiredListeners, "requiredListeners");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(shutdownScope, "shutdownScope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.cameraGraphId = cameraGraphId;
        this.defaultParameters = defaultParameters;
        this.requiredParameters = requiredParameters;
        this.requiredListeners = requiredListeners;
        this.listeners = listeners;
        this.shutdownScope = shutdownScope;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(dispatcher.plus(new CoroutineName("CXCP-GraphLoop")));
        this.graphLoopScope = CoroutineScope;
        this.processingQueue = ProcessingQueue.Companion.processIn(new ProcessingQueue(0, new GraphLoop$processingQueue$1(this), new GraphLoop$processingQueue$2(this), 1, null), CoroutineScope);
        this.lock = new Object();
        this._graphParameters = MapsKt.emptyMap();
        this._graph3AParameters = MapsKt.emptyMap();
        this._requestListeners = CollectionsKt.emptyList();
        this._captureProcessingEnabled = AtomicFU.atomic(true);
        this.currentGraphParameters = MapsKt.emptyMap();
        this.currentGraph3AParameters = MapsKt.emptyMap();
        this.currentRequiredParameters = requiredParameters;
        this.currentRequestListeners = requiredListeners;
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
                    ((Listener) this.listeners.get(i)).onGraphStopped();
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
                    if (request != null) {
                        this.processingQueue.tryEmit(new GraphCommand.Repeat(request));
                    } else {
                        this.processingQueue.tryEmit(GraphCommand.Stop.INSTANCE);
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
                ((Listener) this.listeners.get(i)).onStopRepeating();
            }
        }
    }

    public final void setGraphParameters(Map value) {
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            this._graphParameters = value;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(value, this._graph3AParameters));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setGraph3AParameters(Map value) {
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            this._graph3AParameters = value;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(this._graphParameters, value));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setRequestListeners(List value) {
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            this._requestListeners = value;
            this.processingQueue.tryEmit(new GraphCommand.Listeners(value));
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

    public final boolean submit(List requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        if (this.processingQueue.tryEmit(new GraphCommand.Capture(requests))) {
            return true;
        }
        abortRequests(requests);
        return false;
    }

    public final boolean trigger(Map parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (getRepeatingRequest() == null) {
            throw new IllegalStateException("Cannot submit parameters without an active repeating request!");
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
                    ((Listener) this.listeners.get(i)).onGraphShutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(List list, Continuation continuation) {
        int iSelectGraphCommand = selectGraphCommand(list);
        GraphCommand graphCommand = (GraphCommand) list.get(iSelectGraphCommand);
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
                        throw new NoWhenBranchMatchedException();
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
    private final int selectGraphCommand(List list) {
        if (list.size() == 1) {
            return 0;
        }
        List list2 = list;
        int size = list2.size() - 1;
        int i = -1;
        if (size >= 0) {
            while (true) {
                int i2 = size - 1;
                GraphCommand graphCommand = (GraphCommand) list.get(size);
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
        int size2 = list2.size();
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < size2; i5++) {
            GraphCommand graphCommand2 = (GraphCommand) list.get(i5);
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
            int size3 = list2.size();
            for (int i6 = 0; i6 < size3; i6++) {
                GraphCommand graphCommand3 = (GraphCommand) list.get(i6);
                if ((graphCommand3 instanceof GraphCommand.Capture) || (graphCommand3 instanceof GraphCommand.Trigger)) {
                    return i6;
                }
            }
        }
        int size4 = list2.size();
        int i7 = -1;
        int i8 = 0;
        while (i8 < size4 && (((GraphCommand) list.get(i8)) instanceof GraphCommand.Repeat)) {
            int i9 = i8;
            i8++;
            i7 = i9;
        }
        if (i7 >= 0) {
            return i7;
        }
        return 0;
    }

    static /* synthetic */ void processCapture$default(GraphLoop graphLoop, List list, int i, GraphCommand.Capture capture, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        graphLoop.processCapture(list, i, capture, z);
    }

    private final void processCapture(List list, int i, GraphCommand.Capture capture, boolean z) {
        if (getCaptureProcessingEnabled() && buildAndSubmit$default(this, false, capture.getRequests(), null, 4, null)) {
            list.remove(i);
            return;
        }
        if (!z || i <= 0) {
            return;
        }
        int i2 = i - 1;
        if (!(((GraphCommand) list.get(i2)) instanceof GraphCommand.Repeat)) {
            throw new IllegalStateException("Check failed.");
        }
        processRepeat(list, i2, false);
    }

    private final void processTrigger(List list, int i, GraphCommand.Trigger trigger) {
        Request request = this.currentRepeatingRequest;
        if (request == null && i == 0) {
            list.remove(i);
            return;
        }
        if (getCaptureProcessingEnabled() && request != null && buildAndSubmit(false, CollectionsKt.listOf(request), trigger.getTriggerParameters())) {
            list.remove(i);
        } else if (i > 0) {
            int i2 = i - 1;
            if (!(((GraphCommand) list.get(i2)) instanceof GraphCommand.Repeat)) {
                throw new IllegalStateException("Check failed.");
            }
            processRepeat(list, i2, false);
        }
    }

    static /* synthetic */ void processRepeat$default(GraphLoop graphLoop, List list, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        graphLoop.processRepeat(list, i, z);
    }

    private final void processRepeat(List list, int i, boolean z) {
        int i2;
        int i3 = i;
        while (true) {
            int i4 = 0;
            if (-1 < i3) {
                GraphCommand graphCommand = (GraphCommand) list.get(i3);
                if (graphCommand instanceof GraphCommand.Repeat) {
                    GraphCommand.Repeat repeat = (GraphCommand.Repeat) graphCommand;
                    if (buildAndSubmit$default(this, true, CollectionsKt.listOf(repeat.getRequest()), null, 4, null)) {
                        this.currentRepeatingRequest = repeat.getRequest();
                        list.remove(i3);
                        while (i4 < i3) {
                            if (((GraphCommand) list.get(i4)) instanceof GraphCommand.Repeat) {
                                list.remove(i4);
                                i3--;
                            } else {
                                i4++;
                            }
                        }
                        return;
                    }
                }
                i3--;
            } else {
                if (!z || (i2 = i + 1) >= list.size()) {
                    return;
                }
                GraphCommand graphCommand2 = (GraphCommand) list.get(i2);
                if (graphCommand2 instanceof GraphCommand.Capture) {
                    processCapture(list, i2, (GraphCommand.Capture) graphCommand2, false);
                    return;
                } else {
                    if (graphCommand2 instanceof GraphCommand.Trigger) {
                        processTrigger(list, i2, (GraphCommand.Trigger) graphCommand2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void processParameters(List list, int i, GraphCommand.Parameters parameters) {
        Map mapBuild;
        this.currentGraphParameters = parameters.getGraphParameters();
        this.currentGraph3AParameters = parameters.getGraph3AParameters();
        if (parameters.getGraph3AParameters().isEmpty()) {
            mapBuild = this.requiredParameters;
        } else {
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            RequestsKt.putAllMetadata(mapCreateMapBuilder, parameters.getGraph3AParameters());
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.requiredParameters);
            mapBuild = MapsKt.build(mapCreateMapBuilder);
        }
        this.currentRequiredParameters = mapBuild;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            if (((GraphCommand) list.get(i2)) instanceof GraphCommand.Parameters) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
        reissueRepeatingRequest();
    }

    private final void processListeners(List list, int i, GraphCommand.Listeners listeners) {
        this.currentRequestListeners = CollectionsKt.distinct(CollectionsKt.plus((Collection) listeners.getListeners(), (Iterable) this.requiredListeners));
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            if (((GraphCommand) list.get(i2)) instanceof GraphCommand.Listeners) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
        reissueRepeatingRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00de -> B:37:0x00f9). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f7 -> B:36:0x00f8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0106 -> B:39:0x0107). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestProcessor(List list, int i, GraphCommand.RequestProcessor requestProcessor, Continuation continuation) {
        C02421 c02421;
        int i2;
        GraphCommand.RequestProcessor requestProcessor2;
        Ref$IntRef ref$IntRef;
        C02421 c024212;
        int i3;
        List list2;
        List list3;
        List list4;
        GraphCommand graphCommand;
        GraphCommand.RequestProcessor requestProcessor3;
        List list5;
        int i4;
        GraphRequestProcessor graphRequestProcessor;
        GraphCommand.RequestProcessor requestProcessor4;
        Ref$IntRef ref$IntRef2;
        List list6;
        GraphCommand graphCommand2;
        GraphCommand.RequestProcessor requestProcessor5;
        Ref$IntRef ref$IntRef3;
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
            Ref$IntRef ref$IntRef4 = new Ref$IntRef();
            ref$IntRef4.element = 1;
            list.remove(i);
            i2 = i;
            requestProcessor2 = requestProcessor;
            ref$IntRef = ref$IntRef4;
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
            ref$IntRef2 = (Ref$IntRef) c02421.L$2;
            requestProcessor4 = (GraphCommand.RequestProcessor) c02421.L$1;
            list4 = (List) c02421.L$0;
            ResultKt.throwOnFailure(obj);
            GraphCommand.RequestProcessor requestProcessor6 = requestProcessor4;
            graphCommand = graphCommand2;
            list5 = list6;
            ref$IntRef = ref$IntRef2;
            requestProcessor3 = requestProcessor6;
            graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
            if (graphRequestProcessor != null) {
            }
            GraphCommand.RequestProcessor requestProcessor7 = requestProcessor3;
            i3 = i4;
            ref$IntRef.element++;
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
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$IntRef3 = (Ref$IntRef) c02421.L$2;
            requestProcessor5 = (GraphCommand.RequestProcessor) c02421.L$1;
            list3 = (List) c02421.L$0;
            ResultKt.throwOnFailure(obj);
            ref$IntRef = ref$IntRef3;
            requestProcessor2 = requestProcessor5;
            this.currentRequestProcessor = requestProcessor2.getNew();
            if (!reissueRepeatingRequest()) {
                Request request = this.currentRepeatingRequest;
                if (request != null) {
                    list3.add(0, new GraphCommand.Repeat(request));
                    if (ref$IntRef.element == 1) {
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
        ref$IntRef = (Ref$IntRef) c02421.L$2;
        requestProcessor3 = (GraphCommand.RequestProcessor) c02421.L$1;
        List list7 = (List) c02421.L$0;
        ResultKt.throwOnFailure(obj);
        list4 = list7;
        GraphCommand.RequestProcessor requestProcessor72 = requestProcessor3;
        i3 = i4;
        ref$IntRef.element++;
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
            graphCommand = (GraphCommand) list2.get(i3);
            if (graphCommand instanceof GraphCommand.RequestProcessor) {
                GraphRequestProcessor old = ((GraphCommand.RequestProcessor) graphCommand).getOld();
                if (old != null) {
                    c024212.L$0 = list3;
                    c024212.L$1 = requestProcessor2;
                    c024212.L$2 = ref$IntRef;
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
                        ref$IntRef2 = ref$IntRef;
                        list6 = list2;
                        GraphCommand.RequestProcessor requestProcessor62 = requestProcessor4;
                        graphCommand = graphCommand2;
                        list5 = list6;
                        ref$IntRef = ref$IntRef2;
                        requestProcessor3 = requestProcessor62;
                        graphRequestProcessor = ((GraphCommand.RequestProcessor) graphCommand).getNew();
                        if (graphRequestProcessor != null) {
                            c02421.L$0 = list4;
                            c02421.L$1 = requestProcessor3;
                            c02421.L$2 = ref$IntRef;
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
                        ref$IntRef.element++;
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
                    ref$IntRef.element++;
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
                        c024212.L$2 = ref$IntRef;
                        c024212.L$3 = null;
                        c024212.L$4 = null;
                        c024212.label = 3;
                        if (old2.shutdown$camera_camera2_pipe(c024212) != coroutine_suspended) {
                            requestProcessor5 = requestProcessor2;
                            ref$IntRef3 = ref$IntRef;
                            ref$IntRef = ref$IntRef3;
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

    private final void processStop(List list, int i) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.stopRepeating$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            GraphCommand graphCommand = (GraphCommand) list.get(i2);
            if (Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE) || (graphCommand instanceof GraphCommand.Repeat)) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
    }

    private final void processAbort(List list, int i) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.abortCaptures$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            GraphCommand graphCommand = (GraphCommand) list.get(i2);
            if (!Intrinsics.areEqual(graphCommand, GraphCommand.Stop.INSTANCE) && !Intrinsics.areEqual(graphCommand, GraphCommand.Abort.INSTANCE) && !(graphCommand instanceof GraphCommand.Repeat) && !(graphCommand instanceof GraphCommand.Trigger)) {
                if (graphCommand instanceof GraphCommand.Capture) {
                    abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
                } else {
                    i2++;
                }
            }
            list.remove(i2);
            i--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
    
        if (r12.shutdown$camera_camera2_pipe(r0) == r1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e9, code lost:
    
        if (r12.shutdown$camera_camera2_pipe(r0) == r1) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:48:0x00ee). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00d9 -> B:47:0x00ec). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:47:0x00ec). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processShutdown(List list, Continuation continuation) {
        C02431 c02431;
        List list2;
        int size;
        GraphCommand graphCommand;
        int i;
        List list3;
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
                GraphCommand graphCommand3 = (GraphCommand) list.get(i5);
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
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            size = c02431.I$1;
            i = c02431.I$0;
            list3 = (List) c02431.L$0;
            ResultKt.throwOnFailure(obj);
            list2 = list3;
            i4 = i;
            i4++;
            if (i4 >= size) {
                graphCommand = (GraphCommand) list2.get(i4);
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

    private final void abortRequests(List list) {
        List list2 = list;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Request request = (Request) list.get(i);
            int size2 = this.currentRequestListeners.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((Request.Listener) this.currentRequestListeners.get(i2)).onAborted(request);
            }
        }
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Request request2 = (Request) list.get(i3);
            int size4 = request2.getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((Request.Listener) request2.getListeners().get(i4)).onAborted(request2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finalizeUnprocessedCommands(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GraphCommand graphCommand = (GraphCommand) it.next();
            if (graphCommand instanceof GraphCommand.Capture) {
                abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
            } else if (graphCommand instanceof GraphCommand.RequestProcessor) {
                BuildersKt__Builders_commonKt.launch$default(this.shutdownScope, null, CoroutineStart.UNDISPATCHED, new C02411(graphCommand, null), 1, null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$finalizeUnprocessedCommands$1 */
    static final class C02411 extends SuspendLambda implements Function2 {
        final /* synthetic */ GraphCommand $command;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02411(GraphCommand graphCommand, Continuation continuation) {
            super(2, continuation);
            this.$command = graphCommand;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C02411(this.$command, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
        
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
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
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

    static /* synthetic */ boolean buildAndSubmit$default(GraphLoop graphLoop, boolean z, List list, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return graphLoop.buildAndSubmit(z, list, map);
    }

    private final boolean buildAndSubmit(boolean z, List list, Map map) throws Exception {
        Map mapBuild;
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor == null) {
            return false;
        }
        Map map2 = this.defaultParameters;
        Map map3 = this.currentGraphParameters;
        if (map.isEmpty()) {
            mapBuild = this.currentRequiredParameters;
        } else {
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.currentGraph3AParameters);
            RequestsKt.putAllMetadata(mapCreateMapBuilder, map);
            RequestsKt.putAllMetadata(mapCreateMapBuilder, this.requiredParameters);
            Unit unit = Unit.INSTANCE;
            mapBuild = MapsKt.build(mapCreateMapBuilder);
        }
        boolean zSubmit$camera_camera2_pipe = graphRequestProcessor.submit$camera_camera2_pipe(z, list, map2, map3, mapBuild, this.currentRequestListeners);
        if (!zSubmit$camera_camera2_pipe) {
            if (z) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to repeat with " + CollectionsKt.single(list));
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (map.isEmpty()) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to submit capture with " + list);
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to trigger with " + CollectionsKt.single(list) + " and " + map);
            }
        }
        return zSubmit$camera_camera2_pipe;
    }

    public String toString() {
        return "GraphLoop(" + this.cameraGraphId + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
