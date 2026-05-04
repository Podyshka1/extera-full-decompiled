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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphRequestProcessor {
    public static final Companion Companion = new Companion(null);
    private final GraphRequestProcessor$activeBurstListener$1 activeBurstListener;
    private final List activeCaptureSequences;
    private final CaptureSequenceProcessor captureSequenceProcessor;
    private final AtomicBoolean closed;
    private final int debugId;

    public /* synthetic */ GraphRequestProcessor(CaptureSequenceProcessor captureSequenceProcessor, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureSequenceProcessor);
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1] */
    private GraphRequestProcessor(CaptureSequenceProcessor captureSequenceProcessor) {
        this.captureSequenceProcessor = captureSequenceProcessor;
        this.debugId = GraphRequestProcessorKt.getGraphRequestProcessorIds().incrementAndGet();
        this.closed = AtomicFU.atomic(false);
        this.activeCaptureSequences = new ArrayList();
        this.activeBurstListener = new CaptureSequence.CaptureSequenceListener() { // from class: androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1
            @Override // androidx.camera.camera2.pipe.CaptureSequence.CaptureSequenceListener
            public void onCaptureSequenceComplete(CaptureSequence captureSequence) {
                Intrinsics.checkNotNullParameter(captureSequence, "captureSequence");
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

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GraphRequestProcessor from(CaptureSequenceProcessor captureSequenceProcessor) {
            Intrinsics.checkNotNullParameter(captureSequenceProcessor, "captureSequenceProcessor");
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
                RequestMetadata requestMetadata = (RequestMetadata) captureSequence.getCaptureMetadataList().get(i);
                int size2 = captureSequence.getListeners().size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((Request.Listener) captureSequence.getListeners().get(i2)).onAborted(requestMetadata.getRequest());
                }
            }
            Debug debug2 = Debug.INSTANCE;
            Trace.endSection();
            Trace.beginSection("InvokeRequestListeners");
            int size3 = captureSequence.getCaptureMetadataList().size();
            for (int i3 = 0; i3 < size3; i3++) {
                RequestMetadata requestMetadata2 = (RequestMetadata) captureSequence.getCaptureMetadataList().get(i3);
                int size4 = requestMetadata2.getRequest().getListeners().size();
                for (int i4 = 0; i4 < size4; i4++) {
                    ((Request.Listener) requestMetadata2.getRequest().getListeners().get(i4)).onAborted(requestMetadata2.getRequest());
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

    public final Object shutdown$camera_camera2_pipe(Continuation continuation) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Closing " + this);
        }
        if (this.closed.compareAndSet(false, true)) {
            Object objShutdown = this.captureSequenceProcessor.shutdown(continuation);
            return objShutdown == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShutdown : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final boolean submit$camera_camera2_pipe(boolean z, List requests, Map defaultParameters, Map graphParameters, Map requiredParameters, List listeners) throws Exception {
        Throwable th;
        boolean z2;
        ImageWrapper image;
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(defaultParameters, "defaultParameters");
        Intrinsics.checkNotNullParameter(graphParameters, "graphParameters");
        Intrinsics.checkNotNullParameter(requiredParameters, "requiredParameters");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        if (this.closed.getValue()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to submit " + requests + ": " + this + " is closed.");
            }
            return false;
        }
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("CXCP#buildCaptureSequence");
            CaptureSequence captureSequenceBuild = this.captureSequenceProcessor.build(z, requests, defaultParameters, graphParameters, requiredParameters, this.activeBurstListener, listeners);
            Trace.endSection();
            boolean z3 = true;
            if (captureSequenceBuild == null) {
                List list = requests;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (((Request) it.next()).getInputRequest() != null) {
                            Iterator it2 = requests.iterator();
                            while (it2.hasNext()) {
                                Request request = (Request) it2.next();
                                InputRequest inputRequest = request.getInputRequest();
                                if (inputRequest != null && (image = inputRequest.getImage()) != null) {
                                    UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(image);
                                    Unit unit = Unit.INSTANCE;
                                }
                                Iterator it3 = request.getListeners().iterator();
                                while (it3.hasNext()) {
                                    ((Request.Listener) it3.next()).onAborted(request);
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
                    RequestMetadata requestMetadata = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i);
                    int size2 = captureSequenceBuild.getListeners().size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((Request.Listener) captureSequenceBuild.getListeners().get(i2)).onRequestSequenceCreated(requestMetadata);
                    }
                }
                Debug debug2 = Debug.INSTANCE;
                Trace.endSection();
                Trace.beginSection("InvokeRequestListeners");
                int size3 = captureSequenceBuild.getCaptureMetadataList().size();
                for (int i3 = 0; i3 < size3; i3++) {
                    RequestMetadata requestMetadata2 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i3);
                    int size4 = requestMetadata2.getRequest().getListeners().size();
                    for (int i4 = 0; i4 < size4; i4++) {
                        ((Request.Listener) requestMetadata2.getRequest().getListeners().get(i4)).onRequestSequenceCreated(requestMetadata2);
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
                                RequestMetadata requestMetadata3 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i5);
                                int size6 = captureSequenceBuild.getListeners().size();
                                for (int i6 = 0; i6 < size6; i6++) {
                                    ((Request.Listener) captureSequenceBuild.getListeners().get(i6)).onAborted(requestMetadata3.getRequest());
                                }
                            }
                            Debug debug4 = Debug.INSTANCE;
                            Trace.endSection();
                            Trace.beginSection("InvokeRequestListeners");
                            int size7 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i7 = 0; i7 < size7; i7++) {
                                RequestMetadata requestMetadata4 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i7);
                                int size8 = requestMetadata4.getRequest().getListeners().size();
                                for (int i8 = 0; i8 < size8; i8++) {
                                    ((Request.Listener) requestMetadata4.getRequest().getListeners().get(i8)).onAborted(requestMetadata4.getRequest());
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
                                RequestMetadata requestMetadata5 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i9);
                                int size10 = captureSequenceBuild.getListeners().size();
                                for (int i10 = 0; i10 < size10; i10++) {
                                    ((Request.Listener) captureSequenceBuild.getListeners().get(i10)).onRequestSequenceSubmitted(requestMetadata5);
                                }
                            }
                            Debug debug6 = Debug.INSTANCE;
                            Trace.endSection();
                            Trace.beginSection("InvokeRequestListeners");
                            int size11 = captureSequenceBuild.getCaptureMetadataList().size();
                            for (int i11 = 0; i11 < size11; i11++) {
                                RequestMetadata requestMetadata6 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i11);
                                int size12 = requestMetadata6.getRequest().getListeners().size();
                                for (int i12 = 0; i12 < size12; i12++) {
                                    ((Request.Listener) requestMetadata6.getRequest().getListeners().get(i12)).onRequestSequenceSubmitted(requestMetadata6);
                                }
                            }
                            Debug debug7 = Debug.INSTANCE;
                            try {
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d("CXCP", this + " submitted " + captureSequenceBuild);
                                }
                                z2 = true;
                            } catch (CameraAccessException unused) {
                                if (!z3 && !captureSequenceBuild.getRepeating()) {
                                    synchronized (this.activeCaptureSequences) {
                                        this.activeCaptureSequences.remove(captureSequenceBuild);
                                    }
                                    CaptureSequences captureSequences4 = CaptureSequences.INSTANCE;
                                    Debug debug8 = Debug.INSTANCE;
                                    Trace.beginSection("InvokeInternalListeners");
                                    int size13 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i13 = 0; i13 < size13; i13++) {
                                        RequestMetadata requestMetadata7 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i13);
                                        int size14 = captureSequenceBuild.getListeners().size();
                                        for (int i14 = 0; i14 < size14; i14++) {
                                            ((Request.Listener) captureSequenceBuild.getListeners().get(i14)).onAborted(requestMetadata7.getRequest());
                                        }
                                    }
                                    Debug debug9 = Debug.INSTANCE;
                                    Trace.endSection();
                                    Trace.beginSection("InvokeRequestListeners");
                                    int size15 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i15 = 0; i15 < size15; i15++) {
                                        RequestMetadata requestMetadata8 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i15);
                                        int size16 = requestMetadata8.getRequest().getListeners().size();
                                        for (int i16 = 0; i16 < size16; i16++) {
                                            ((Request.Listener) requestMetadata8.getRequest().getListeners().get(i16)).onAborted(requestMetadata8.getRequest());
                                        }
                                    }
                                    Debug debug10 = Debug.INSTANCE;
                                }
                                return false;
                            } catch (Throwable th2) {
                                th = th2;
                                if (z3 || captureSequenceBuild.getRepeating()) {
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
                                    RequestMetadata requestMetadata9 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i17);
                                    int size18 = captureSequenceBuild.getListeners().size();
                                    for (int i18 = 0; i18 < size18; i18++) {
                                        ((Request.Listener) captureSequenceBuild.getListeners().get(i18)).onAborted(requestMetadata9.getRequest());
                                    }
                                }
                                Debug debug12 = Debug.INSTANCE;
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size19 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i19 = 0; i19 < size19; i19++) {
                                    RequestMetadata requestMetadata10 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i19);
                                    int size20 = requestMetadata10.getRequest().getListeners().size();
                                    for (int i20 = 0; i20 < size20; i20++) {
                                        ((Request.Listener) requestMetadata10.getRequest().getListeners().get(i20)).onAborted(requestMetadata10.getRequest());
                                    }
                                }
                                Debug debug13 = Debug.INSTANCE;
                                throw th;
                            }
                        } else {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to submit " + captureSequenceBuild + ": " + this + " received -1 from submit.");
                            }
                            z2 = false;
                            z3 = false;
                        }
                        if (z2 || captureSequenceBuild.getRepeating()) {
                            return z3;
                        }
                        synchronized (this.activeCaptureSequences) {
                            this.activeCaptureSequences.remove(captureSequenceBuild);
                        }
                        CaptureSequences captureSequences6 = CaptureSequences.INSTANCE;
                        Trace.beginSection("InvokeInternalListeners");
                        int size21 = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i21 = 0; i21 < size21; i21++) {
                            RequestMetadata requestMetadata11 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i21);
                            int size22 = captureSequenceBuild.getListeners().size();
                            for (int i22 = 0; i22 < size22; i22++) {
                                ((Request.Listener) captureSequenceBuild.getListeners().get(i22)).onAborted(requestMetadata11.getRequest());
                            }
                        }
                        Debug debug14 = Debug.INSTANCE;
                        Trace.endSection();
                        Trace.beginSection("InvokeRequestListeners");
                        int size23 = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i23 = 0; i23 < size23; i23++) {
                            RequestMetadata requestMetadata12 = (RequestMetadata) captureSequenceBuild.getCaptureMetadataList().get(i23);
                            int size24 = requestMetadata12.getRequest().getListeners().size();
                            for (int i24 = 0; i24 < size24; i24++) {
                                ((Request.Listener) requestMetadata12.getRequest().getListeners().get(i24)).onAborted(requestMetadata12.getRequest());
                            }
                        }
                        Debug debug15 = Debug.INSTANCE;
                        return z3;
                    } finally {
                    }
                }
            } catch (CameraAccessException unused2) {
                z3 = false;
            } catch (Throwable th3) {
                th = th3;
                z3 = false;
            }
        } finally {
            Trace.endSection();
        }
    }

    public String toString() {
        return "GraphRequestProcessor-" + this.debugId;
    }
}
