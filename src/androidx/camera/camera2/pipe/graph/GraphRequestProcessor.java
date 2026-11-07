package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CameraAccessException;
import android.os.Trace;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.CaptureSequences;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.media.ImageWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\b\u0005*\u0001+\u0018\u0000 .2\u00020\u0001:\u0001.B#\b\u0002\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u000b\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u0007H\u0080@¢\u0006\u0004\b\r\u0010\u000eJo\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0012\u0010\u0016\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00152\u0012\u0010\u0017\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00152\u0012\u0010\u0018\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00152\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0012H\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R&\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001e\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030(8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006/"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;", "Landroidx/camera/camera2/pipe/CaptureSequence;", "captureSequenceProcessor", "<init>", "(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)V", _UrlKt.FRAGMENT_ENCODE_SET, "abortCaptures$camera_camera2_pipe", "()V", "abortCaptures", "stopRepeating$camera_camera2_pipe", "stopRepeating", "shutdown$camera_camera2_pipe", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shutdown", _UrlKt.FRAGMENT_ENCODE_SET, "isRepeating", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request;", "requests", _UrlKt.FRAGMENT_ENCODE_SET, "defaultParameters", "graphParameters", "requiredParameters", "Landroidx/camera/camera2/pipe/Request$Listener;", "listeners", "submit$camera_camera2_pipe", "(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z", "submit", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", "Lkotlinx/atomicfu/AtomicBoolean;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", _UrlKt.FRAGMENT_ENCODE_SET, "activeCaptureSequences", "Ljava/util/List;", "androidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1", "activeBurstListener", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphRequestProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphRequestProcessor.kt\nandroidx/camera/camera2/pipe/graph/GraphRequestProcessor\n+ 2 CaptureSequence.kt\nandroidx/camera/camera2/pipe/CaptureSequences\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n235#1:247\n236#1:277\n239#1:305\n240#1:335\n235#1:338\n236#1:368\n243#1:382\n244#1:412\n235#1:417\n236#1:447\n235#1:448\n236#1:478\n235#1:479\n236#1:509\n235#1:510\n236#1:540\n55#2:248\n58#2,8:253\n66#2,12:265\n55#2:306\n58#2,8:311\n66#2,12:323\n55#2:339\n58#2,8:344\n66#2,12:356\n55#2:383\n58#2,8:388\n66#2,12:400\n55#2:418\n58#2,8:423\n66#2,12:435\n55#2:449\n58#2,8:454\n66#2,12:466\n55#2:480\n58#2,8:485\n66#2,12:497\n55#2:511\n58#2,8:516\n66#2,12:528\n55#2:541\n58#2,8:546\n66#2,12:558\n55#2:570\n58#2,8:575\n66#2,12:587\n55#2:599\n58#2,8:604\n66#2,12:616\n71#3,4:249\n78#3,4:261\n48#3,2:282\n71#3,4:284\n50#3,3:288\n78#3,4:291\n71#3,4:307\n78#3,4:319\n71#3,4:340\n78#3,4:352\n48#3,2:369\n71#3,4:371\n50#3,3:375\n78#3,4:378\n71#3,4:384\n78#3,4:396\n71#3,4:419\n78#3,4:431\n71#3,4:450\n78#3,4:462\n71#3,4:481\n78#3,4:493\n71#3,4:512\n78#3,4:524\n71#3,4:542\n78#3,4:554\n71#3,4:571\n78#3,4:583\n71#3,4:600\n78#3,4:612\n50#4,2:278\n71#4,2:280\n71#4,2:298\n71#4,2:300\n50#4,2:303\n71#4,2:336\n50#4,2:413\n71#4,2:415\n1761#5,3:295\n1#6:302\n*S KotlinDebug\n*F\n+ 1 GraphRequestProcessor.kt\nandroidx/camera/camera2/pipe/graph/GraphRequestProcessor\n*L\n95#1:247\n95#1:277\n181#1:305\n181#1:335\n223#1:338\n223#1:368\n204#1:382\n204#1:412\n223#1:417\n223#1:447\n223#1:448\n223#1:478\n223#1:479\n223#1:509\n223#1:510\n223#1:540\n95#1:248\n95#1:253,8\n95#1:265,12\n181#1:306\n181#1:311,8\n181#1:323,12\n223#1:339\n223#1:344,8\n223#1:356,12\n204#1:383\n204#1:388,8\n204#1:400,12\n223#1:418\n223#1:423,8\n223#1:435,12\n223#1:449\n223#1:454,8\n223#1:466,12\n223#1:480\n223#1:485,8\n223#1:497,12\n223#1:511\n223#1:516,8\n223#1:528,12\n235#1:541\n235#1:546,8\n235#1:558,12\n239#1:570\n239#1:575,8\n239#1:587,12\n243#1:599\n243#1:604,8\n243#1:616,12\n95#1:249,4\n95#1:261,4\n130#1:282,2\n130#1:284,4\n130#1:288,3\n130#1:291,4\n181#1:307,4\n181#1:319,4\n223#1:340,4\n223#1:352,4\n196#1:369,2\n196#1:371,4\n196#1:375,3\n196#1:378,4\n204#1:384,4\n204#1:396,4\n223#1:419,4\n223#1:431,4\n223#1:450,4\n223#1:462,4\n223#1:481,4\n223#1:493,4\n223#1:512,4\n223#1:524,4\n235#1:542,4\n235#1:554,4\n239#1:571,4\n239#1:583,4\n243#1:600,4\n243#1:612,4\n108#1:278,2\n124#1:280,2\n159#1:298,2\n169#1:300,2\n180#1:303,2\n192#1:336,2\n206#1:413,2\n209#1:415,2\n144#1:295,3\n*E\n"})
public final class GraphRequestProcessor {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final GraphRequestProcessor$activeBurstListener$1 activeBurstListener;
    private final List<CaptureSequence<?>> activeCaptureSequences;
    private final CaptureSequenceProcessor<Object, CaptureSequence<Object>> captureSequenceProcessor;
    private final AtomicBoolean closed;
    private final int debugId;

    public /* synthetic */ GraphRequestProcessor(CaptureSequenceProcessor captureSequenceProcessor, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureSequenceProcessor);
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1] */
    private GraphRequestProcessor(CaptureSequenceProcessor<? extends Object, CaptureSequence<Object>> captureSequenceProcessor) {
        this.captureSequenceProcessor = captureSequenceProcessor;
        this.debugId = GraphRequestProcessorKt.getGraphRequestProcessorIds().incrementAndGet();
        this.closed = AtomicFU.atomic(false);
        this.activeCaptureSequences = new ArrayList();
        this.activeBurstListener = new CaptureSequence.CaptureSequenceListener() { // from class: androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1
            @Override // androidx.camera.camera2.pipe.CaptureSequence.CaptureSequenceListener
            public void onCaptureSequenceComplete(CaptureSequence<?> captureSequence) {
                if (captureSequence.getRepeating()) {
                    return;
                }
                List list = this.this$0.activeCaptureSequences;
                GraphRequestProcessor graphRequestProcessor = this.this$0;
                synchronized (list) {
                    graphRequestProcessor.activeCaptureSequences.remove(captureSequence);
                }
            }
        };
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "captureSequenceProcessor", "Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GraphRequestProcessor from(CaptureSequenceProcessor<?, ?> captureSequenceProcessor) {
            return new GraphRequestProcessor(captureSequenceProcessor, null);
        }
    }

    public final void abortCaptures$camera_camera2_pipe() {
        List<CaptureSequence> list;
        synchronized (this.activeCaptureSequences) {
            list = CollectionsKt.toList(this.activeCaptureSequences);
            this.activeCaptureSequences.clear();
        }
        for (CaptureSequence captureSequence : list) {
            CaptureSequences captureSequences = CaptureSequences.INSTANCE;
            Debug debug = Debug.INSTANCE;
            Trace.beginSection("InvokeInternalListeners");
            int size = captureSequence.getCaptureMetadataList().size();
            for (int i = 0; i < size; i++) {
                RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
                int size2 = captureSequence.getListeners().size();
                for (int i2 = 0; i2 < size2; i2++) {
                    captureSequence.getListeners().get(i2).onAborted(requestMetadata.getRequest());
                }
            }
            Debug debug2 = Debug.INSTANCE;
            Trace.endSection();
            Trace.beginSection("InvokeRequestListeners");
            int size3 = captureSequence.getCaptureMetadataList().size();
            for (int i3 = 0; i3 < size3; i3++) {
                RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
                int size4 = requestMetadata2.getRequest().getListeners().size();
                for (int i4 = 0; i4 < size4; i4++) {
                    requestMetadata2.getRequest().getListeners().get(i4).onAborted(requestMetadata2.getRequest());
                }
            }
            Debug debug3 = Debug.INSTANCE;
            Trace.endSection();
        }
        this.captureSequenceProcessor.abortCaptures();
    }

    public final void stopRepeating$camera_camera2_pipe() {
        this.captureSequenceProcessor.stopRepeating();
    }

    public final Object shutdown$camera_camera2_pipe(Continuation<? super Unit> continuation) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Closing " + this);
        }
        if (this.closed.compareAndSet(false, true)) {
            Object objShutdown = this.captureSequenceProcessor.shutdown(continuation);
            return objShutdown == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShutdown : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final boolean submit$camera_camera2_pipe(boolean isRepeating, List<Request> requests, Map<?, ? extends Object> defaultParameters, Map<?, ? extends Object> graphParameters, Map<?, ? extends Object> requiredParameters, List<? extends Request.Listener> listeners) throws Exception {
        Throwable th;
        boolean z;
        ImageWrapper image;
        if (this.closed.getValue()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to submit " + requests + ": " + this + " is closed.");
            }
            return false;
        }
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("CXCP#buildCaptureSequence");
            CaptureSequence<?> captureSequenceBuild = this.captureSequenceProcessor.build(isRepeating, requests, defaultParameters, graphParameters, requiredParameters, this.activeBurstListener, listeners);
            Trace.endSection();
            boolean z2 = true;
            if (captureSequenceBuild == null) {
                List<Request> list = requests;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (((Request) it.next()).getInputRequest() != null) {
                            for (Request request : requests) {
                                InputRequest inputRequest = request.getInputRequest();
                                if (inputRequest != null && (image = inputRequest.getImage()) != null) {
                                    UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(image);
                                    Unit unit = Unit.INSTANCE;
                                }
                                Iterator<Request.Listener> it2 = request.getListeners().iterator();
                                while (it2.hasNext()) {
                                    it2.next().onAborted(request);
                                }
                            }
                            return true;
                        }
                    }
                }
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to submit " + requests + ": " + this + " failed to build CaptureSequence.");
                }
                return false;
            }
            if (this.closed.getValue()) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to submit " + requests + ": " + this + " is closed.");
                }
                return false;
            }
            if (!captureSequenceBuild.getRepeating()) {
                synchronized (this.activeCaptureSequences) {
                    this.activeCaptureSequences.add(captureSequenceBuild);
                }
            }
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", this + " submitting " + captureSequenceBuild);
                }
                CaptureSequences captureSequences = CaptureSequences.INSTANCE;
                Trace.beginSection("InvokeInternalListeners");
                int size = captureSequenceBuild.getCaptureMetadataList().size();
                for (int i = 0; i < size; i++) {
                    RequestMetadata requestMetadata = captureSequenceBuild.getCaptureMetadataList().get(i);
                    int size2 = captureSequenceBuild.getListeners().size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        captureSequenceBuild.getListeners().get(i2).onRequestSequenceCreated(requestMetadata);
                    }
                }
                Debug debug2 = Debug.INSTANCE;
                Trace.endSection();
                Trace.beginSection("InvokeRequestListeners");
                int size3 = captureSequenceBuild.getCaptureMetadataList().size();
                for (int i3 = 0; i3 < size3; i3++) {
                    RequestMetadata requestMetadata2 = captureSequenceBuild.getCaptureMetadataList().get(i3);
                    int size4 = requestMetadata2.getRequest().getListeners().size();
                    for (int i4 = 0; i4 < size4; i4++) {
                        requestMetadata2.getRequest().getListeners().get(i4).onRequestSequenceCreated(requestMetadata2);
                    }
                }
                Debug debug3 = Debug.INSTANCE;
                synchronized (captureSequenceBuild) {
                    if (this.closed.getValue()) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to submit " + captureSequenceBuild + ": " + this + " is closed.");
                        }
                        if (!captureSequenceBuild.getRepeating()) {
                            synchronized (this.activeCaptureSequences) {
                                this.activeCaptureSequences.remove(captureSequenceBuild);
                            }
                            CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
                            Trace.beginSection("InvokeInternalListeners");
                            int size5 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i5 = 0; i5 < size5; i5++) {
                                RequestMetadata requestMetadata3 = captureSequenceBuild.getCaptureMetadataList().get(i5);
                                int size6 = captureSequenceBuild.getListeners().size();
                                for (int i6 = 0; i6 < size6; i6++) {
                                    captureSequenceBuild.getListeners().get(i6).onAborted(requestMetadata3.getRequest());
                                }
                            }
                            Debug debug4 = Debug.INSTANCE;
                            Trace.endSection();
                            Trace.beginSection("InvokeRequestListeners");
                            int size7 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i7 = 0; i7 < size7; i7++) {
                                RequestMetadata requestMetadata4 = captureSequenceBuild.getCaptureMetadataList().get(i7);
                                int size8 = requestMetadata4.getRequest().getListeners().size();
                                for (int i8 = 0; i8 < size8; i8++) {
                                    requestMetadata4.getRequest().getListeners().get(i8).onAborted(requestMetadata4.getRequest());
                                }
                            }
                            Debug debug5 = Debug.INSTANCE;
                        }
                        return false;
                    }
                    try {
                        Trace.beginSection("CXCP#submit(CaptureSequence)");
                        Integer numSubmit = this.captureSequenceProcessor.submit(captureSequenceBuild);
                        int iIntValue = numSubmit != null ? numSubmit.intValue() : -1;
                        captureSequenceBuild.setSequenceNumber(iIntValue);
                        if (iIntValue != -1) {
                            CaptureSequences captureSequences3 = CaptureSequences.INSTANCE;
                            Trace.beginSection("InvokeInternalListeners");
                            int size9 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i9 = 0; i9 < size9; i9++) {
                                RequestMetadata requestMetadata5 = captureSequenceBuild.getCaptureMetadataList().get(i9);
                                int size10 = captureSequenceBuild.getListeners().size();
                                for (int i10 = 0; i10 < size10; i10++) {
                                    captureSequenceBuild.getListeners().get(i10).onRequestSequenceSubmitted(requestMetadata5);
                                }
                            }
                            Debug debug6 = Debug.INSTANCE;
                            Trace.endSection();
                            Trace.beginSection("InvokeRequestListeners");
                            int size11 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i11 = 0; i11 < size11; i11++) {
                                RequestMetadata requestMetadata6 = captureSequenceBuild.getCaptureMetadataList().get(i11);
                                int size12 = requestMetadata6.getRequest().getListeners().size();
                                for (int i12 = 0; i12 < size12; i12++) {
                                    requestMetadata6.getRequest().getListeners().get(i12).onRequestSequenceSubmitted(requestMetadata6);
                                }
                            }
                            Debug debug7 = Debug.INSTANCE;
                            try {
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d("CXCP", this + " submitted " + captureSequenceBuild);
                                }
                                z = true;
                            } catch (CameraAccessException unused) {
                                if (!z2 && !captureSequenceBuild.getRepeating()) {
                                    synchronized (this.activeCaptureSequences) {
                                        this.activeCaptureSequences.remove(captureSequenceBuild);
                                    }
                                    CaptureSequences captureSequences4 = CaptureSequences.INSTANCE;
                                    Debug debug8 = Debug.INSTANCE;
                                    Trace.beginSection("InvokeInternalListeners");
                                    int size13 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i13 = 0; i13 < size13; i13++) {
                                        RequestMetadata requestMetadata7 = captureSequenceBuild.getCaptureMetadataList().get(i13);
                                        int size14 = captureSequenceBuild.getListeners().size();
                                        for (int i14 = 0; i14 < size14; i14++) {
                                            captureSequenceBuild.getListeners().get(i14).onAborted(requestMetadata7.getRequest());
                                        }
                                    }
                                    Debug debug9 = Debug.INSTANCE;
                                    Trace.endSection();
                                    Trace.beginSection("InvokeRequestListeners");
                                    int size15 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i15 = 0; i15 < size15; i15++) {
                                        RequestMetadata requestMetadata8 = captureSequenceBuild.getCaptureMetadataList().get(i15);
                                        int size16 = requestMetadata8.getRequest().getListeners().size();
                                        for (int i16 = 0; i16 < size16; i16++) {
                                            requestMetadata8.getRequest().getListeners().get(i16).onAborted(requestMetadata8.getRequest());
                                        }
                                    }
                                    Debug debug10 = Debug.INSTANCE;
                                }
                                return false;
                            } catch (Throwable th2) {
                                th = th2;
                                if (z2 || captureSequenceBuild.getRepeating()) {
                                    throw th;
                                }
                                synchronized (this.activeCaptureSequences) {
                                    this.activeCaptureSequences.remove(captureSequenceBuild);
                                }
                                CaptureSequences captureSequences5 = CaptureSequences.INSTANCE;
                                Debug debug11 = Debug.INSTANCE;
                                Trace.beginSection("InvokeInternalListeners");
                                int size17 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i17 = 0; i17 < size17; i17++) {
                                    RequestMetadata requestMetadata9 = captureSequenceBuild.getCaptureMetadataList().get(i17);
                                    int size18 = captureSequenceBuild.getListeners().size();
                                    for (int i18 = 0; i18 < size18; i18++) {
                                        captureSequenceBuild.getListeners().get(i18).onAborted(requestMetadata9.getRequest());
                                    }
                                }
                                Debug debug12 = Debug.INSTANCE;
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size19 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i19 = 0; i19 < size19; i19++) {
                                    RequestMetadata requestMetadata10 = captureSequenceBuild.getCaptureMetadataList().get(i19);
                                    int size20 = requestMetadata10.getRequest().getListeners().size();
                                    for (int i20 = 0; i20 < size20; i20++) {
                                        requestMetadata10.getRequest().getListeners().get(i20).onAborted(requestMetadata10.getRequest());
                                    }
                                }
                                Debug debug13 = Debug.INSTANCE;
                                throw th;
                            }
                        } else {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to submit " + captureSequenceBuild + ": " + this + " received -1 from submit.");
                            }
                            z = false;
                            z2 = false;
                        }
                        if (z || captureSequenceBuild.getRepeating()) {
                            return z2;
                        }
                        synchronized (this.activeCaptureSequences) {
                            this.activeCaptureSequences.remove(captureSequenceBuild);
                        }
                        CaptureSequences captureSequences6 = CaptureSequences.INSTANCE;
                        Trace.beginSection("InvokeInternalListeners");
                        int size21 = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i21 = 0; i21 < size21; i21++) {
                            RequestMetadata requestMetadata11 = captureSequenceBuild.getCaptureMetadataList().get(i21);
                            int size22 = captureSequenceBuild.getListeners().size();
                            for (int i22 = 0; i22 < size22; i22++) {
                                captureSequenceBuild.getListeners().get(i22).onAborted(requestMetadata11.getRequest());
                            }
                        }
                        Debug debug14 = Debug.INSTANCE;
                        Trace.endSection();
                        Trace.beginSection("InvokeRequestListeners");
                        int size23 = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i23 = 0; i23 < size23; i23++) {
                            RequestMetadata requestMetadata12 = captureSequenceBuild.getCaptureMetadataList().get(i23);
                            int size24 = requestMetadata12.getRequest().getListeners().size();
                            for (int i24 = 0; i24 < size24; i24++) {
                                requestMetadata12.getRequest().getListeners().get(i24).onAborted(requestMetadata12.getRequest());
                            }
                        }
                        Debug debug15 = Debug.INSTANCE;
                        return z2;
                    } finally {
                    }
                }
            } catch (CameraAccessException unused2) {
                z2 = false;
            } catch (Throwable th3) {
                th = th3;
                z2 = false;
            }
        } finally {
            Trace.endSection();
        }
    }

    public String toString() {
        return "GraphRequestProcessor-" + this.debugId;
    }
}
