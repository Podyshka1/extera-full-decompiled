package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Trace;
import android.util.ArrayMap;
import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.media.AndroidImageWriter;
import androidx.camera.camera2.pipe.media.ImageWrapper;
import androidx.camera.camera2.pipe.media.ImageWriterWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CaptureSequenceProcessor implements CaptureSequenceProcessor {
    public static final Companion Companion = new Companion(null);
    private final boolean awaitRepeatingRequestOnDisconnect;
    private final int debugId;
    private boolean disconnected;
    private final ImageWriterWrapper imageWriter;
    private Camera2CaptureSequence lastSingleRepeatingRequestSequence;
    private final Object lock;
    private final Map outputToSurfaceMap;
    private final CameraCaptureSessionWrapper session;
    private final StreamGraph streamGraph;
    private final Map streamToSurfaceMap;
    private final StrictMode strictMode;
    private final int template;
    private final Threads threads;

    public /* synthetic */ Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCaptureSessionWrapper, threads, i, map, map2, streamGraph, strictMode, z);
    }

    private Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper session, Threads threads, int i, Map streamToSurfaceMap, Map outputToSurfaceMap, StreamGraph streamGraph, StrictMode strictMode, boolean z) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(streamToSurfaceMap, "streamToSurfaceMap");
        Intrinsics.checkNotNullParameter(outputToSurfaceMap, "outputToSurfaceMap");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        this.session = session;
        this.threads = threads;
        this.template = i;
        this.streamToSurfaceMap = streamToSurfaceMap;
        this.outputToSurfaceMap = outputToSurfaceMap;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.awaitRepeatingRequestOnDisconnect = z;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceProcessorDebugIds().incrementAndGet();
        this.lock = new Object();
        ImageWriterWrapper imageWriterWrapperM1962createU86x6Zg = null;
        if (!streamGraph.getInputs().isEmpty()) {
            InputStream inputStream = (InputStream) CollectionsKt.first(streamGraph.getInputs());
            Surface inputSurface = session.getInputSurface();
            if (inputSurface == null) {
                throw new IllegalStateException("inputSurface is required to create instance of imageWriter.");
            }
            try {
                imageWriterWrapperM1962createU86x6Zg = AndroidImageWriter.Companion.m1962createU86x6Zg(inputSurface, inputStream.mo1651getIdm1bwn9M(), inputStream.getMaxImages(), StreamFormat.m1772boximpl(inputStream.mo1650getFormat8FPWQzE()), threads.getCamera2Handler());
            } catch (RuntimeException e) {
                if (Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e("CXCP", "Failed to create ImageWriter for session " + this.session + "! Reprocessing will not be supported!", e);
                }
            }
            if (imageWriterWrapperM1962createU86x6Zg != null && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Created ImageWriter " + imageWriterWrapperM1962createU86x6Zg + " for session " + this.session);
            }
        }
        this.imageWriter = imageWriterWrapperM1962createU86x6Zg;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x028e A[LOOP:3: B:81:0x0206->B:109:0x028e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x029c A[EDGE_INSN: B:141:0x029c->B:110:0x029c BREAK  A[LOOP:3: B:81:0x0206->B:109:0x028e], SYNTHETIC] */
    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Camera2CaptureSequence build(boolean z, List requests, Map map, Map map2, Map map3, CaptureSequence.CaptureSequenceListener sequenceListener, List listeners) {
        boolean z2;
        ArrayList arrayList;
        ArrayMap arrayMap;
        Iterator it;
        ArrayList arrayList2;
        boolean z3;
        ArrayMap arrayMap2;
        ArrayMap arrayMap3;
        ArrayList arrayList3;
        ArrayList arrayList4;
        Log log;
        Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor = this;
        Map defaultParameters = map;
        Map graphParameters = map2;
        Map requiredParameters = map3;
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(defaultParameters, "defaultParameters");
        Intrinsics.checkNotNullParameter(graphParameters, "graphParameters");
        Intrinsics.checkNotNullParameter(requiredParameters, "requiredParameters");
        Intrinsics.checkNotNullParameter(sequenceListener, "sequenceListener");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        ArrayList arrayList5 = new ArrayList(requests.size());
        ArrayList arrayList6 = new ArrayList(requests.size());
        ArrayMap arrayMap4 = new ArrayMap();
        ArrayMap arrayMap5 = new ArrayMap();
        ArrayMap arrayMap6 = new ArrayMap();
        if (!camera2CaptureSequenceProcessor.validateRequestList(requests, camera2CaptureSequenceProcessor.session) || !camera2CaptureSequenceProcessor.buildSurfaceMaps(requests, arrayMap4, arrayMap5, arrayMap6)) {
            return null;
        }
        Iterator it2 = requests.iterator();
        while (it2.hasNext()) {
            Request request = (Request) it2.next();
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Building CaptureRequest for " + request);
            }
            RequestTemplate requestTemplateM1737getTemplateejQnlcg = request.m1737getTemplateejQnlcg();
            int iM1760unboximpl = requestTemplateM1737getTemplateejQnlcg != null ? requestTemplateM1737getTemplateejQnlcg.m1760unboximpl() : camera2CaptureSequenceProcessor.template;
            CaptureRequest.Builder builderM1827buildCaptureRequestBuilder0UCm73U = camera2CaptureSequenceProcessor.m1827buildCaptureRequestBuilder0UCm73U(request, iM1760unboximpl);
            if (builderM1827buildCaptureRequestBuilder0UCm73U == null) {
                return null;
            }
            CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
            Iterator it3 = it2;
            Object obj = requiredParameters.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            if (obj == null) {
                obj = defaultParameters.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            }
            builderM1827buildCaptureRequestBuilder0UCm73U.setTag(obj);
            int size = request.getStreams().size();
            int i = 0;
            boolean z4 = false;
            while (true) {
                z2 = true;
                if (i >= size) {
                    break;
                }
                int i2 = size;
                Surface surface = (Surface) arrayMap6.get(request.getStreams().get(i));
                if (surface != null) {
                    builderM1827buildCaptureRequestBuilder0UCm73U.addTarget(surface);
                    z4 = true;
                }
                i++;
                size = i2;
            }
            if (!z4) {
                throw new IllegalStateException("Check failed.");
            }
            if (request.getInputRequest() == null) {
                arrayList = arrayList5;
                RequestsKt.writeParameters(builderM1827buildCaptureRequestBuilder0UCm73U, defaultParameters);
                RequestsKt.writeParameters(builderM1827buildCaptureRequestBuilder0UCm73U, graphParameters);
                RequestsKt.writeParameters(builderM1827buildCaptureRequestBuilder0UCm73U, request.getParameters());
                RequestsKt.writeParameters(builderM1827buildCaptureRequestBuilder0UCm73U, requiredParameters);
            } else {
                if (camera2CaptureSequenceProcessor.imageWriter == null) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "Failed to queue request to ImageWriter - No ImageWriter available!");
                    }
                    return null;
                }
                ImageWrapper image = request.getInputRequest().getImage();
                synchronized (camera2CaptureSequenceProcessor.lock) {
                    arrayList = arrayList5;
                    if (camera2CaptureSequenceProcessor.disconnected) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", camera2CaptureSequenceProcessor + " disconnected. " + image + " can't be queued to " + camera2CaptureSequenceProcessor.imageWriter);
                        }
                        return null;
                    }
                    Unit unit = Unit.INSTANCE;
                    Log log2 = Log.INSTANCE;
                    if (log2.getDEBUG_LOGGABLE()) {
                        log = log2;
                        android.util.Log.d("CXCP", "Queuing image " + image + " for reprocessing to ImageWriter " + camera2CaptureSequenceProcessor.imageWriter);
                    } else {
                        log = log2;
                    }
                    if (!camera2CaptureSequenceProcessor.imageWriter.queueInputImage(image)) {
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Failed to queue image " + image + " for reprocessing to ImageWriter " + camera2CaptureSequenceProcessor.imageWriter);
                        }
                        return null;
                    }
                    RequestsKt.writeParameters(builderM1827buildCaptureRequestBuilder0UCm73U, request.getParameters());
                }
            }
            ArrayMap arrayMap7 = arrayMap5;
            int i3 = iM1760unboximpl;
            long jNextRequestNumber = Camera2CaptureSequenceProcessorKt.nextRequestNumber();
            CaptureRequest captureRequestBuild = builderM1827buildCaptureRequestBuilder0UCm73U.build();
            Intrinsics.checkNotNullExpressionValue(captureRequestBuild, "build(...)");
            CameraCaptureSessionWrapper cameraCaptureSessionWrapper = camera2CaptureSequenceProcessor.session;
            if (cameraCaptureSessionWrapper instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
                List listCreateHighSpeedRequestList = ((CameraConstrainedHighSpeedCaptureSessionWrapper) cameraCaptureSessionWrapper).createHighSpeedRequestList(captureRequestBuild);
                if (listCreateHighSpeedRequestList == null) {
                    return null;
                }
                List streams = request.getStreams();
                if ((streams instanceof Collection) && streams.isEmpty()) {
                    arrayMap = arrayMap7;
                    arrayList2 = arrayList6;
                    z2 = false;
                    if (z2) {
                    }
                    arrayList6 = arrayList4;
                    arrayList5 = arrayList3;
                    arrayMap6 = arrayMap3;
                    arrayMap4 = arrayMap2;
                    arrayMap5 = arrayMap;
                    camera2CaptureSequenceProcessor = this;
                } else {
                    Iterator it4 = streams.iterator();
                    while (it4.hasNext()) {
                        ((StreamId) it4.next()).m1792unboximpl();
                        List<OutputStream> outputs = camera2CaptureSequenceProcessor.streamGraph.getOutputs();
                        arrayMap = arrayMap7;
                        if ((outputs instanceof Collection) && outputs.isEmpty()) {
                            it = it4;
                            arrayList2 = arrayList6;
                            z3 = false;
                            if (!z3) {
                            }
                        } else {
                            for (OutputStream outputStream : outputs) {
                                OutputStream.StreamUseCase streamUseCaseMo1688getStreamUseCase8x2ez34 = outputStream.mo1688getStreamUseCase8x2ez34();
                                it = it4;
                                arrayList2 = arrayList6;
                                if (!(streamUseCaseMo1688getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m1719equalsimpl0(streamUseCaseMo1688getStreamUseCase8x2ez34.m1722unboximpl(), OutputStream.StreamUseCase.Companion.m1725getVIDEO_RECORDvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHintMo1689getStreamUseHintHIPxoCc = outputStream.mo1689getStreamUseHintHIPxoCc();
                                    boolean z5 = streamUseHintMo1689getStreamUseHintHIPxoCc == null ? false : OutputStream.StreamUseHint.m1729equalsimpl0(streamUseHintMo1689getStreamUseHintHIPxoCc.m1732unboximpl(), OutputStream.StreamUseHint.Companion.m1734getVIDEO_RECORD4VYZOf8());
                                    if (z5) {
                                        z3 = true;
                                        break;
                                    }
                                    arrayList6 = arrayList2;
                                    it4 = it;
                                }
                            }
                            it = it4;
                            arrayList2 = arrayList6;
                            z3 = false;
                            if (!z3) {
                                break;
                            }
                            arrayMap7 = arrayMap;
                            arrayList6 = arrayList2;
                            it4 = it;
                        }
                    }
                    arrayMap = arrayMap7;
                    arrayList2 = arrayList6;
                    z2 = false;
                    if (z2) {
                        graphParameters = map2;
                        requiredParameters = map3;
                        arrayMap2 = arrayMap4;
                        arrayMap3 = arrayMap6;
                        arrayList4 = arrayList2;
                        defaultParameters = map;
                        Camera2RequestMetadata camera2RequestMetadata = new Camera2RequestMetadata(camera2CaptureSequenceProcessor.session, (CaptureRequest) listCreateHighSpeedRequestList.get(0), defaultParameters, graphParameters, requiredParameters, arrayMap3, i3, z, request, jNextRequestNumber, null);
                        arrayList4.add(listCreateHighSpeedRequestList.get(0));
                        arrayList3 = arrayList;
                        arrayList3.add(camera2RequestMetadata);
                        it2 = it3;
                    } else {
                        arrayMap2 = arrayMap4;
                        arrayMap3 = arrayMap6;
                        arrayList3 = arrayList;
                        arrayList4 = arrayList2;
                        int i4 = 0;
                        int size2 = listCreateHighSpeedRequestList.size();
                        while (i4 < size2) {
                            int i5 = size2;
                            ArrayList arrayList7 = arrayList3;
                            Camera2RequestMetadata camera2RequestMetadata2 = new Camera2RequestMetadata(this.session, (CaptureRequest) listCreateHighSpeedRequestList.get(i4), map, map2, map3, arrayMap3, i3, z, request, jNextRequestNumber, null);
                            arrayList4.add(listCreateHighSpeedRequestList.get(i4));
                            arrayList7.add(camera2RequestMetadata2);
                            i4++;
                            arrayList3 = arrayList7;
                            size2 = i5;
                        }
                        it2 = it3;
                        defaultParameters = map;
                        graphParameters = map2;
                        requiredParameters = map3;
                    }
                    arrayList6 = arrayList4;
                    arrayList5 = arrayList3;
                    arrayMap6 = arrayMap3;
                    arrayMap4 = arrayMap2;
                    arrayMap5 = arrayMap;
                    camera2CaptureSequenceProcessor = this;
                }
            } else {
                ArrayList arrayList8 = arrayList6;
                ArrayMap arrayMap8 = arrayMap4;
                ArrayMap arrayMap9 = arrayMap6;
                defaultParameters = map;
                graphParameters = map2;
                requiredParameters = map3;
                ArrayList arrayList9 = arrayList;
                Camera2RequestMetadata camera2RequestMetadata3 = new Camera2RequestMetadata(cameraCaptureSessionWrapper, captureRequestBuild, defaultParameters, graphParameters, requiredParameters, arrayMap9, i3, z, request, jNextRequestNumber, null);
                arrayList8.add(captureRequestBuild);
                arrayList9.add(camera2RequestMetadata3);
                arrayList5 = arrayList9;
                arrayList6 = arrayList8;
                arrayMap6 = arrayMap9;
                arrayMap4 = arrayMap8;
                arrayMap5 = arrayMap7;
                camera2CaptureSequenceProcessor = this;
                it2 = it3;
            }
        }
        return new Camera2CaptureSequence(this.session.getDevice().mo1797getCameraIdDz_R5H8(), z, arrayList6, arrayList5, listeners, sequenceListener, arrayMap4, arrayMap5, this.streamGraph, this.strictMode, null);
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Integer submit(Camera2CaptureSequence captureSequence) {
        Integer numCaptureBurst;
        Intrinsics.checkNotNullParameter(captureSequence, "captureSequence");
        synchronized (this.lock) {
            if (this.disconnected) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", this + " disconnected. " + captureSequence + " won't be submitted");
                }
                return null;
            }
            if (captureSequence.getCaptureRequestList().size() == 1 && !(this.session instanceof CameraConstrainedHighSpeedCaptureSessionWrapper)) {
                if (captureSequence.getRepeating()) {
                    if (this.awaitRepeatingRequestOnDisconnect) {
                        this.lastSingleRepeatingRequestSequence = captureSequence;
                    }
                    numCaptureBurst = this.session.setRepeatingRequest((CaptureRequest) captureSequence.getCaptureRequestList().get(0), captureSequence);
                } else {
                    numCaptureBurst = this.session.capture((CaptureRequest) captureSequence.getCaptureRequestList().get(0), captureSequence);
                }
            } else if (captureSequence.getRepeating()) {
                numCaptureBurst = this.session.setRepeatingBurst(captureSequence.getCaptureRequestList(), captureSequence);
            } else {
                numCaptureBurst = this.session.captureBurst(captureSequence.getCaptureRequestList(), captureSequence);
            }
            return numCaptureBurst;
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public void abortCaptures() {
        synchronized (this.lock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", this + "#abortCaptures");
                }
                this.session.abortCaptures();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public void stopRepeating() {
        synchronized (this.lock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", this + "#stopRepeating");
                }
                this.session.stopRepeating();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Object shutdown(Continuation continuation) {
        disconnect$camera_camera2_pipe();
        return Unit.INSTANCE;
    }

    public final void disconnect$camera_camera2_pipe() {
        Camera2CaptureSequence camera2CaptureSequence;
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#disconnect");
            synchronized (this.lock) {
                try {
                    if (this.disconnected) {
                        camera2CaptureSequence = null;
                    } else {
                        this.disconnected = true;
                        ImageWriterWrapper imageWriterWrapper = this.imageWriter;
                        if (imageWriterWrapper != null) {
                            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(imageWriterWrapper);
                        }
                        Surface inputSurface = this.session.getInputSurface();
                        if (inputSurface != null) {
                            inputSurface.release();
                        }
                        camera2CaptureSequence = this.lastSingleRepeatingRequestSequence;
                    }
                } finally {
                }
            }
            if (this.awaitRepeatingRequestOnDisconnect && camera2CaptureSequence != null) {
                awaitRepeatingRequestStarted(camera2CaptureSequence);
            }
            Unit unit = Unit.INSTANCE;
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public String toString() {
        return "Camera2CaptureSequenceProcessor-" + this.debugId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void awaitRepeatingRequestStarted(Camera2CaptureSequence camera2CaptureSequence) {
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Waiting for the last repeating request sequence: " + camera2CaptureSequence);
        }
        if (((Unit) this.threads.runBlockingCheckedOrNull(2000L, new C02042(camera2CaptureSequence, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", this + "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = " + camera2CaptureSequence);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2 */
    static final class C02042 extends SuspendLambda implements Function1 {
        final /* synthetic */ Camera2CaptureSequence $captureSequence;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02042(Camera2CaptureSequence camera2CaptureSequence, Continuation continuation) {
            super(1, continuation);
            this.$captureSequence = camera2CaptureSequence;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new C02042(this.$captureSequence, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C02042) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2CaptureSequence camera2CaptureSequence = this.$captureSequence;
                this.label = 1;
                if (camera2CaptureSequence.awaitStarted$camera_camera2_pipe(this) == coroutine_suspended) {
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

    /* JADX WARN: Removed duplicated region for block: B:116:0x0175 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[LOOP:2: B:57:0x0106->B:120:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:? A[LOOP:4: B:15:0x003b->B:130:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean validateRequestList(List list, CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (list.isEmpty()) {
            throw new IllegalStateException("build(...) should never be called with an empty request list!");
        }
        if (cameraCaptureSessionWrapper instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
            Iterator it = list.iterator();
            Boolean bool = null;
            Boolean bool2 = null;
            while (it.hasNext()) {
                Request request = (Request) it.next();
                List streams = request.getStreams();
                if ((streams instanceof Collection) && streams.isEmpty()) {
                    z2 = false;
                } else {
                    Iterator it2 = streams.iterator();
                    while (it2.hasNext()) {
                        ((StreamId) it2.next()).m1792unboximpl();
                        List<OutputStream> outputs = this.streamGraph.getOutputs();
                        if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                            for (OutputStream outputStream : outputs) {
                                OutputStream.StreamUseCase streamUseCaseMo1688getStreamUseCase8x2ez34 = outputStream.mo1688getStreamUseCase8x2ez34();
                                if (!(streamUseCaseMo1688getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m1719equalsimpl0(streamUseCaseMo1688getStreamUseCase8x2ez34.m1722unboximpl(), OutputStream.StreamUseCase.Companion.m1724getPREVIEWvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHintMo1689getStreamUseHintHIPxoCc = outputStream.mo1689getStreamUseHintHIPxoCc();
                                    boolean z6 = (streamUseHintMo1689getStreamUseHintHIPxoCc == null ? false : OutputStream.StreamUseHint.m1729equalsimpl0(streamUseHintMo1689getStreamUseHintHIPxoCc.m1732unboximpl(), OutputStream.StreamUseHint.Companion.m1733getDEFAULT4VYZOf8())) || outputStream.mo1689getStreamUseHintHIPxoCc() == null;
                                    if (z6) {
                                        z = true;
                                        break;
                                    }
                                }
                            }
                            z = false;
                            if (!z) {
                                z2 = true;
                                break;
                            }
                        } else {
                            z = false;
                            if (!z) {
                            }
                        }
                    }
                    z2 = false;
                }
                Boolean boolValueOf = Boolean.valueOf(z2);
                if (bool != null && !Intrinsics.areEqual(bool, boolValueOf) && Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e("CXCP", "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: " + bool.booleanValue() + ". Current request contains preview stream use case or hint: " + z2 + '.');
                }
                List streams2 = request.getStreams();
                if ((streams2 instanceof Collection) && streams2.isEmpty()) {
                    z4 = false;
                } else {
                    Iterator it3 = streams2.iterator();
                    while (it3.hasNext()) {
                        ((StreamId) it3.next()).m1792unboximpl();
                        List<OutputStream> outputs2 = this.streamGraph.getOutputs();
                        if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                            for (OutputStream outputStream2 : outputs2) {
                                OutputStream.StreamUseCase streamUseCaseMo1688getStreamUseCase8x2ez342 = outputStream2.mo1688getStreamUseCase8x2ez34();
                                if (!(streamUseCaseMo1688getStreamUseCase8x2ez342 == null ? false : OutputStream.StreamUseCase.m1719equalsimpl0(streamUseCaseMo1688getStreamUseCase8x2ez342.m1722unboximpl(), OutputStream.StreamUseCase.Companion.m1725getVIDEO_RECORDvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHintMo1689getStreamUseHintHIPxoCc2 = outputStream2.mo1689getStreamUseHintHIPxoCc();
                                    boolean z7 = streamUseHintMo1689getStreamUseHintHIPxoCc2 == null ? false : OutputStream.StreamUseHint.m1729equalsimpl0(streamUseHintMo1689getStreamUseHintHIPxoCc2.m1732unboximpl(), OutputStream.StreamUseHint.Companion.m1734getVIDEO_RECORD4VYZOf8());
                                    if (z7) {
                                        z3 = true;
                                        break;
                                    }
                                }
                            }
                            z3 = false;
                            if (!z3) {
                                z4 = true;
                                break;
                            }
                        } else {
                            z3 = false;
                            if (!z3) {
                            }
                        }
                    }
                    z4 = false;
                }
                Boolean boolValueOf2 = Boolean.valueOf(z4);
                if (bool2 != null && !Intrinsics.areEqual(bool2, boolValueOf2) && Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e("CXCP", "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: " + bool2.booleanValue() + ". Current request contains video stream use case: " + z4 + '.');
                }
                List outputs3 = this.streamGraph.getOutputs();
                if ((outputs3 instanceof Collection) && outputs3.isEmpty()) {
                    z5 = true;
                } else {
                    Iterator it4 = outputs3.iterator();
                    while (it4.hasNext()) {
                        if (!((OutputStream) it4.next()).isValidForHighSpeedOperatingMode()) {
                            z5 = false;
                            break;
                        }
                    }
                    z5 = true;
                }
                if (!z5) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are " + this.streamGraph.getOutputs());
                    }
                    return false;
                }
                bool2 = boolValueOf2;
                bool = boolValueOf;
            }
        }
        return true;
    }

    private final boolean buildSurfaceMaps(List list, Map map, Map map2, Map map3) {
        if (list.isEmpty()) {
            throw new IllegalStateException("build(...) should never be called with an empty request list!");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Request request = (Request) it.next();
            Iterator it2 = request.getStreams().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                int iM1792unboximpl = ((StreamId) it2.next()).m1792unboximpl();
                if (!map3.containsKey(StreamId.m1786boximpl(iM1792unboximpl))) {
                    Surface surface = (Surface) this.streamToSurfaceMap.get(StreamId.m1786boximpl(iM1792unboximpl));
                    if (surface != null) {
                        map.put(surface, StreamId.m1786boximpl(iM1792unboximpl));
                        map3.put(StreamId.m1786boximpl(iM1792unboximpl), surface);
                        CameraStream cameraStreamMo1782getaKI5c8E = this.streamGraph.mo1782getaKI5c8E(iM1792unboximpl);
                        if (cameraStreamMo1782getaKI5c8E == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        for (OutputStream outputStream : cameraStreamMo1782getaKI5c8E.getOutputs()) {
                            Object obj = this.outputToSurfaceMap.get(OutputId.m1665boximpl(outputStream.mo1686getId4LaLFng()));
                            if (obj == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            map2.put((Surface) obj, OutputId.m1665boximpl(outputStream.mo1686getId4LaLFng()));
                        }
                    } else {
                        continue;
                    }
                }
                z = true;
            }
            if (!z) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "  Failed to bind any surfaces for " + request + '!');
                }
                return false;
            }
            if (!z) {
                throw new IllegalStateException("Check failed.");
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: buildCaptureRequestBuilder-0UCm73U, reason: not valid java name */
    private final CaptureRequest.Builder m1827buildCaptureRequestBuilder0UCm73U(Request request, int i) {
        CaptureRequest.Builder builderMo1796createCaptureRequest2PPcXtw;
        if (request.getInputRequest() != null) {
            TotalCaptureResult totalCaptureResult = (TotalCaptureResult) request.getInputRequest().getFrameInfo().unwrapAs(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class));
            if (totalCaptureResult == null) {
                throw new IllegalStateException(("Failed to unwrap FrameInfo " + request.getInputRequest().getFrameInfo() + " as TotalCaptureResult").toString());
            }
            builderMo1796createCaptureRequest2PPcXtw = this.session.getDevice().createReprocessCaptureRequest(totalCaptureResult);
        } else {
            builderMo1796createCaptureRequest2PPcXtw = this.session.getDevice().mo1796createCaptureRequest2PPcXtw(i);
        }
        if (builderMo1796createCaptureRequest2PPcXtw != null) {
            return builderMo1796createCaptureRequest2PPcXtw;
        }
        if (request.getInputRequest() != null) {
            if (!Log.INSTANCE.getINFO_LOGGABLE()) {
                return null;
            }
            android.util.Log.i("CXCP", "Failed to create a ReprocessingCaptureRequest.Builder from " + request.getInputRequest().getFrameInfo() + '!');
            return null;
        }
        if (!Log.INSTANCE.getINFO_LOGGABLE()) {
            return null;
        }
        android.util.Log.i("CXCP", "Failed to create a CaptureRequest.Builder from " + ((Object) RequestTemplate.m1759toStringimpl(i)) + '!');
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
