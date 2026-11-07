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
import androidx.view.LifecycleRegistry$$ExternalSyntheticBUOutline0;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 E2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001EBa\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017Jr\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0006\u0010 \u001a\u00020\u00152\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0012\u0010$\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u000b2\u0012\u0010%\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u000b2\u0012\u0010&\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u000b2\u0006\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\"H\u0016J\u0017\u0010+\u001a\u0004\u0018\u00010\u001a2\u0006\u0010,\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010-J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020/H\u0016J\u000e\u00101\u001a\u00020/H\u0096@¢\u0006\u0002\u00102J\r\u00103\u001a\u00020/H\u0000¢\u0006\u0002\b4J\b\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u0010,\u001a\u00020\u0003H\u0002J\u001e\u0010:\u001a\u00020\u00152\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002JR\u0010;\u001a\u00020\u00152\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\f0=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f0=2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0=H\u0002J!\u0010?\u001a\u0004\u0018\u00010@2\u0006\u0010A\u001a\u00020#2\u0006\u0010B\u001a\u00020\tH\u0002¢\u0006\u0004\bC\u0010DR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00158\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006F"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;", "Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;", "Landroid/hardware/camera2/CaptureRequest;", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;", "session", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "template", "Landroidx/camera/camera2/pipe/RequestTemplate;", "streamToSurfaceMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "outputToSurfaceMap", "Landroidx/camera/camera2/pipe/OutputId;", "streamGraph", "Landroidx/camera/camera2/pipe/StreamGraph;", "strictMode", "Landroidx/camera/camera2/pipe/StrictMode;", "awaitRepeatingRequestOnDisconnect", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "I", "debugId", _UrlKt.FRAGMENT_ENCODE_SET, "lock", _UrlKt.FRAGMENT_ENCODE_SET, "disconnected", "lastSingleRepeatingRequestSequence", "build", "isRepeating", "requests", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request;", "defaultParameters", "graphParameters", "requiredParameters", "sequenceListener", "Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;", "listeners", "Landroidx/camera/camera2/pipe/Request$Listener;", "submit", "captureSequence", "(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;", "abortCaptures", _UrlKt.FRAGMENT_ENCODE_SET, "stopRepeating", "shutdown", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "disconnect$camera_camera2_pipe", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "awaitRepeatingRequestStarted", "imageWriter", "Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;", "validateRequestList", "buildSurfaceMaps", "surfaceToStreamMap", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceToOutputMap", "buildCaptureRequestBuilder", "Landroid/hardware/camera2/CaptureRequest$Builder;", PluginsConstants.REQUEST, "requestTemplate", "buildCaptureRequestBuilder-0UCm73U", "(Landroidx/camera/camera2/pipe/Request;I)Landroid/hardware/camera2/CaptureRequest$Builder;", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CaptureSequenceProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CaptureSequenceProcessor.kt\nandroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,667:1\n86#2,2:668\n50#2,2:670\n50#2,2:672\n82#2,2:674\n71#2,2:676\n50#2,2:678\n50#2,2:680\n71#2,2:688\n50#2,2:690\n50#2,2:692\n50#2,2:707\n82#2,2:709\n82#2,2:717\n82#2,2:725\n82#2,2:730\n59#2,2:732\n59#2,2:734\n59#2,2:736\n1761#3,2:682\n1761#3,3:684\n1763#3:687\n1761#3,2:711\n1761#3,3:713\n1763#3:716\n1761#3,2:719\n1761#3,3:721\n1763#3:724\n1740#3,3:727\n48#4,2:694\n71#4,4:696\n50#4,3:700\n78#4,4:703\n*S KotlinDebug\n*F\n+ 1 Camera2CaptureSequenceProcessor.kt\nandroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor\n*L\n424#1:668,2\n431#1:670,2\n145#1:672,2\n172#1:674,2\n180#1:676,2\n184#1:678,2\n187#1:680,2\n316#1:688,2\n347#1:690,2\n353#1:692,2\n387#1:707,2\n397#1:709,2\n470#1:717,2\n492#1:725,2\n507#1:730,2\n564#1:732,2\n601#1:734,2\n606#1:736,2\n229#1:682,2\n230#1:684,3\n229#1:687\n459#1:711,2\n460#1:713,3\n459#1:716\n482#1:719,2\n483#1:721,3\n482#1:724\n504#1:727,3\n363#1:694,2\n363#1:696,4\n363#1:700,3\n363#1:703,4\n*E\n"})
public final class Camera2CaptureSequenceProcessor implements CaptureSequenceProcessor<CaptureRequest, Camera2CaptureSequence> {
    private final boolean awaitRepeatingRequestOnDisconnect;
    private final int debugId;
    private boolean disconnected;
    private final ImageWriterWrapper imageWriter;
    private Camera2CaptureSequence lastSingleRepeatingRequestSequence;
    private final Object lock;
    private final Map<OutputId, Surface> outputToSurfaceMap;
    private final CameraCaptureSessionWrapper session;
    private final StreamGraph streamGraph;
    private final Map<StreamId, Surface> streamToSurfaceMap;
    private final StrictMode strictMode;
    private final int template;
    private final Threads threads;

    public /* synthetic */ Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCaptureSessionWrapper, threads, i, map, map2, streamGraph, strictMode, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map<StreamId, ? extends Surface> map, Map<OutputId, ? extends Surface> map2, StreamGraph streamGraph, StrictMode strictMode, boolean z) {
        this.session = cameraCaptureSessionWrapper;
        this.threads = threads;
        this.template = i;
        this.streamToSurfaceMap = map;
        this.outputToSurfaceMap = map2;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.awaitRepeatingRequestOnDisconnect = z;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceProcessorDebugIds().incrementAndGet();
        this.lock = new Object();
        ImageWriterWrapper imageWriterWrapperM1649createU86x6Zg = null;
        if (!streamGraph.getInputs().isEmpty()) {
            InputStream inputStream = (InputStream) CollectionsKt.first((List) streamGraph.getInputs());
            Surface inputSurface = cameraCaptureSessionWrapper.getInputSurface();
            if (inputSurface == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("inputSurface is required to create instance of imageWriter.");
                throw null;
            }
            try {
                imageWriterWrapperM1649createU86x6Zg = AndroidImageWriter.INSTANCE.m1649createU86x6Zg(inputSurface, inputStream.getId(), inputStream.getMaxImages(), StreamFormat.m1460boximpl(inputStream.getFormat()), threads.getCamera2Handler());
            } catch (RuntimeException e) {
                if (Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e("CXCP", "Failed to create ImageWriter for session " + this.session + "! Reprocessing will not be supported!", e);
                }
            }
            if (imageWriterWrapperM1649createU86x6Zg != null && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Created ImageWriter " + imageWriterWrapperM1649createU86x6Zg + " for session " + this.session);
            }
        }
        this.imageWriter = imageWriterWrapperM1649createU86x6Zg;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public /* bridge */ /* synthetic */ CaptureSequence build(boolean z, List list, Map map, Map map2, Map map3, CaptureSequence.CaptureSequenceListener captureSequenceListener, List list2) {
        return build(z, (List<Request>) list, (Map<?, ? extends Object>) map, (Map<?, ? extends Object>) map2, (Map<?, ? extends Object>) map3, captureSequenceListener, (List<? extends Request.Listener>) list2);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0245 A[LOOP:3: B:78:0x01c0->B:106:0x0245, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0243 A[SYNTHETIC] */
    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Camera2CaptureSequence build(boolean isRepeating, List<Request> requests, Map<?, ? extends Object> defaultParameters, Map<?, ? extends Object> graphParameters, Map<?, ? extends Object> requiredParameters, CaptureSequence.CaptureSequenceListener sequenceListener, List<? extends Request.Listener> listeners) {
        ArrayMap arrayMap;
        boolean z;
        boolean z2;
        ArrayMap arrayMap2;
        ArrayList arrayList;
        Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor = this;
        Map<?, ? extends Object> map = defaultParameters;
        Map<?, ? extends Object> map2 = requiredParameters;
        ArrayList arrayList2 = new ArrayList(requests.size());
        ArrayList arrayList3 = new ArrayList(requests.size());
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        ArrayMap arrayMap5 = new ArrayMap();
        if (!camera2CaptureSequenceProcessor.validateRequestList(requests, camera2CaptureSequenceProcessor.session) || !camera2CaptureSequenceProcessor.buildSurfaceMaps(requests, arrayMap3, arrayMap4, arrayMap5)) {
            return null;
        }
        for (Request request : requests) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Building CaptureRequest for " + request);
            }
            RequestTemplate template = request.getTemplate();
            int value = template != null ? template.getValue() : camera2CaptureSequenceProcessor.template;
            CaptureRequest.Builder builderM1513buildCaptureRequestBuilder0UCm73U = camera2CaptureSequenceProcessor.m1513buildCaptureRequestBuilder0UCm73U(request, value);
            if (builderM1513buildCaptureRequestBuilder0UCm73U == null) {
                return null;
            }
            CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
            Object obj = map2.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            if (obj == null) {
                obj = map.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            }
            builderM1513buildCaptureRequestBuilder0UCm73U.setTag(obj);
            int size = request.getStreams().size();
            boolean z3 = false;
            for (int i = 0; i < size; i++) {
                Surface surface = (Surface) arrayMap5.get(request.getStreams().get(i));
                if (surface != null) {
                    builderM1513buildCaptureRequestBuilder0UCm73U.addTarget(surface);
                    z3 = true;
                }
            }
            if (!z3) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                return null;
            }
            if (request.getInputRequest() == null) {
                RequestsKt.writeParameters(builderM1513buildCaptureRequestBuilder0UCm73U, map);
                RequestsKt.writeParameters(builderM1513buildCaptureRequestBuilder0UCm73U, graphParameters);
                RequestsKt.writeParameters(builderM1513buildCaptureRequestBuilder0UCm73U, request.getParameters());
                RequestsKt.writeParameters(builderM1513buildCaptureRequestBuilder0UCm73U, map2);
            } else {
                if (camera2CaptureSequenceProcessor.imageWriter == null) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "Failed to queue request to ImageWriter - No ImageWriter available!");
                    }
                    return null;
                }
                ImageWrapper image = request.getInputRequest().getImage();
                synchronized (camera2CaptureSequenceProcessor.lock) {
                    if (camera2CaptureSequenceProcessor.disconnected) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", camera2CaptureSequenceProcessor + " disconnected. " + image + " can't be queued to " + camera2CaptureSequenceProcessor.imageWriter);
                        }
                        return null;
                    }
                    Unit unit = Unit.INSTANCE;
                    Log log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Queuing image " + image + " for reprocessing to ImageWriter " + camera2CaptureSequenceProcessor.imageWriter);
                    }
                    if (!camera2CaptureSequenceProcessor.imageWriter.queueInputImage(image)) {
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Failed to queue image " + image + " for reprocessing to ImageWriter " + camera2CaptureSequenceProcessor.imageWriter);
                        }
                        return null;
                    }
                    RequestsKt.writeParameters(builderM1513buildCaptureRequestBuilder0UCm73U, request.getParameters());
                }
            }
            long jNextRequestNumber = Camera2CaptureSequenceProcessorKt.nextRequestNumber();
            CaptureRequest captureRequestBuild = builderM1513buildCaptureRequestBuilder0UCm73U.build();
            ArrayMap arrayMap6 = arrayMap3;
            CameraCaptureSessionWrapper cameraCaptureSessionWrapper = camera2CaptureSequenceProcessor.session;
            if (cameraCaptureSessionWrapper instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
                List<CaptureRequest> listCreateHighSpeedRequestList = ((CameraConstrainedHighSpeedCaptureSessionWrapper) cameraCaptureSessionWrapper).createHighSpeedRequestList(captureRequestBuild);
                if (listCreateHighSpeedRequestList == null) {
                    return null;
                }
                List<StreamId> streams = request.getStreams();
                if ((streams instanceof Collection) && streams.isEmpty()) {
                    arrayMap = arrayMap4;
                    z2 = false;
                    if (z2) {
                    }
                    arrayList2 = arrayList;
                    arrayMap3 = arrayMap2;
                    arrayMap4 = arrayMap;
                } else {
                    Iterator it = streams.iterator();
                    while (it.hasNext()) {
                        ((StreamId) it.next()).getValue();
                        List<OutputStream> outputs = camera2CaptureSequenceProcessor.streamGraph.getOutputs();
                        Iterator it2 = it;
                        if ((outputs instanceof Collection) && outputs.isEmpty()) {
                            arrayMap = arrayMap4;
                            z = false;
                            if (!z) {
                            }
                        } else {
                            Iterator it3 = outputs.iterator();
                            while (it3.hasNext()) {
                                OutputStream outputStream = (OutputStream) it3.next();
                                OutputStream.StreamUseCase streamUseCase = outputStream.getStreamUseCase();
                                Iterator it4 = it3;
                                arrayMap = arrayMap4;
                                if (!(streamUseCase == null ? false : OutputStream.StreamUseCase.m1415equalsimpl0(streamUseCase.getValue(), OutputStream.StreamUseCase.INSTANCE.m1421getVIDEO_RECORDvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHint = outputStream.getStreamUseHint();
                                    boolean z4 = streamUseHint == null ? false : OutputStream.StreamUseHint.m1425equalsimpl0(streamUseHint.getValue(), OutputStream.StreamUseHint.INSTANCE.m1430getVIDEO_RECORD4VYZOf8());
                                    if (z4) {
                                        z = true;
                                        break;
                                    }
                                    arrayMap4 = arrayMap;
                                    it3 = it4;
                                }
                            }
                            arrayMap = arrayMap4;
                            z = false;
                            if (!z) {
                                z2 = true;
                                break;
                            }
                            it = it2;
                            arrayMap4 = arrayMap;
                        }
                    }
                    arrayMap = arrayMap4;
                    z2 = false;
                    if (z2) {
                        map2 = requiredParameters;
                        arrayMap2 = arrayMap6;
                        map = defaultParameters;
                        Camera2RequestMetadata camera2RequestMetadata = new Camera2RequestMetadata(camera2CaptureSequenceProcessor.session, listCreateHighSpeedRequestList.get(0), map, graphParameters, map2, arrayMap5, value, isRepeating, request, jNextRequestNumber, null);
                        arrayList3.add(listCreateHighSpeedRequestList.get(0));
                        arrayList = arrayList2;
                        arrayList.add(camera2RequestMetadata);
                        camera2CaptureSequenceProcessor = this;
                    } else {
                        arrayMap2 = arrayMap6;
                        arrayList = arrayList2;
                        int i2 = 0;
                        int size2 = listCreateHighSpeedRequestList.size();
                        while (i2 < size2) {
                            int i3 = size2;
                            ArrayList arrayList4 = arrayList;
                            Camera2RequestMetadata camera2RequestMetadata2 = new Camera2RequestMetadata(this.session, listCreateHighSpeedRequestList.get(i2), defaultParameters, graphParameters, requiredParameters, arrayMap5, value, isRepeating, request, jNextRequestNumber, null);
                            arrayList3.add(listCreateHighSpeedRequestList.get(i2));
                            arrayList4.add(camera2RequestMetadata2);
                            i2++;
                            arrayList = arrayList4;
                            size2 = i3;
                        }
                        camera2CaptureSequenceProcessor = this;
                        map = defaultParameters;
                        map2 = requiredParameters;
                    }
                    arrayList2 = arrayList;
                    arrayMap3 = arrayMap2;
                    arrayMap4 = arrayMap;
                }
            } else {
                ArrayList arrayList5 = arrayList2;
                map = defaultParameters;
                map2 = requiredParameters;
                Camera2RequestMetadata camera2RequestMetadata3 = new Camera2RequestMetadata(cameraCaptureSessionWrapper, captureRequestBuild, map, graphParameters, map2, arrayMap5, value, isRepeating, request, jNextRequestNumber, null);
                arrayList3.add(captureRequestBuild);
                arrayList5.add(camera2RequestMetadata3);
                arrayList2 = arrayList5;
                arrayMap3 = arrayMap6;
                arrayMap4 = arrayMap4;
                camera2CaptureSequenceProcessor = this;
            }
        }
        return new Camera2CaptureSequence(this.session.getDevice().getCameraId(), isRepeating, arrayList3, arrayList2, listeners, sequenceListener, arrayMap3, arrayMap4, this.streamGraph, this.strictMode, null);
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Integer submit(Camera2CaptureSequence captureSequence) {
        Integer numCaptureBurst;
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
                    numCaptureBurst = this.session.setRepeatingRequest(captureSequence.getCaptureRequestList().get(0), captureSequence);
                } else {
                    numCaptureBurst = this.session.capture(captureSequence.getCaptureRequestList().get(0), captureSequence);
                }
            } else {
                boolean repeating = captureSequence.getRepeating();
                CameraCaptureSessionWrapper cameraCaptureSessionWrapper = this.session;
                if (repeating) {
                    numCaptureBurst = cameraCaptureSessionWrapper.setRepeatingBurst(captureSequence.getCaptureRequestList(), captureSequence);
                } else {
                    numCaptureBurst = cameraCaptureSessionWrapper.captureBurst(captureSequence.getCaptureRequestList(), captureSequence);
                }
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
    public Object shutdown(Continuation<? super Unit> continuation) {
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
                            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(imageWriterWrapper);
                        }
                        Surface inputSurface = this.session.getInputSurface();
                        if (inputSurface != null) {
                            inputSurface.release();
                        }
                        camera2CaptureSequence = this.lastSingleRepeatingRequestSequence;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.awaitRepeatingRequestOnDisconnect && camera2CaptureSequence != null) {
                awaitRepeatingRequestStarted(camera2CaptureSequence);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    public String toString() {
        return "Camera2CaptureSequenceProcessor-" + this.debugId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void awaitRepeatingRequestStarted(Camera2CaptureSequence captureSequence) {
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Waiting for the last repeating request sequence: " + captureSequence);
        }
        if (((Unit) this.threads.runBlockingCheckedOrNull(2000L, new C02062(captureSequence, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", this + "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = " + captureSequence);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2", m873f = "Camera2CaptureSequenceProcessor.kt", m874i = {}, m875l = {395}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C02062 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Camera2CaptureSequence $captureSequence;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02062(Camera2CaptureSequence camera2CaptureSequence, Continuation<? super C02062> continuation) {
            super(1, continuation);
            this.$captureSequence = camera2CaptureSequence;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02062(this.$captureSequence, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02062) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[LOOP:2: B:57:0x0103->B:120:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:? A[LOOP:4: B:15:0x003b->B:130:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean validateRequestList(List<Request> requests, CameraCaptureSessionWrapper session) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (requests.isEmpty()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("build(...) should never be called with an empty request list!");
            return false;
        }
        if (session instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
            Boolean bool = null;
            Boolean bool2 = null;
            for (Request request : requests) {
                List<StreamId> streams = request.getStreams();
                if ((streams instanceof Collection) && streams.isEmpty()) {
                    z2 = false;
                } else {
                    Iterator<T> it = streams.iterator();
                    while (it.hasNext()) {
                        ((StreamId) it.next()).getValue();
                        List<OutputStream> outputs = this.streamGraph.getOutputs();
                        if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                            for (OutputStream outputStream : outputs) {
                                OutputStream.StreamUseCase streamUseCase = outputStream.getStreamUseCase();
                                if (!(streamUseCase == null ? false : OutputStream.StreamUseCase.m1415equalsimpl0(streamUseCase.getValue(), OutputStream.StreamUseCase.INSTANCE.m1420getPREVIEWvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHint = outputStream.getStreamUseHint();
                                    boolean z6 = (streamUseHint == null ? false : OutputStream.StreamUseHint.m1425equalsimpl0(streamUseHint.getValue(), OutputStream.StreamUseHint.INSTANCE.m1429getDEFAULT4VYZOf8())) || outputStream.getStreamUseHint() == null;
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
                List<StreamId> streams2 = request.getStreams();
                if ((streams2 instanceof Collection) && streams2.isEmpty()) {
                    z4 = false;
                } else {
                    Iterator<T> it2 = streams2.iterator();
                    while (it2.hasNext()) {
                        ((StreamId) it2.next()).getValue();
                        List<OutputStream> outputs2 = this.streamGraph.getOutputs();
                        if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                            for (OutputStream outputStream2 : outputs2) {
                                OutputStream.StreamUseCase streamUseCase2 = outputStream2.getStreamUseCase();
                                if (!(streamUseCase2 == null ? false : OutputStream.StreamUseCase.m1415equalsimpl0(streamUseCase2.getValue(), OutputStream.StreamUseCase.INSTANCE.m1421getVIDEO_RECORDvrKr8v8()))) {
                                    OutputStream.StreamUseHint streamUseHint2 = outputStream2.getStreamUseHint();
                                    boolean z7 = streamUseHint2 == null ? false : OutputStream.StreamUseHint.m1425equalsimpl0(streamUseHint2.getValue(), OutputStream.StreamUseHint.INSTANCE.m1430getVIDEO_RECORD4VYZOf8());
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
                List<OutputStream> outputs3 = this.streamGraph.getOutputs();
                if ((outputs3 instanceof Collection) && outputs3.isEmpty()) {
                    z5 = true;
                } else {
                    Iterator<T> it3 = outputs3.iterator();
                    while (it3.hasNext()) {
                        if (!((OutputStream) it3.next()).isValidForHighSpeedOperatingMode()) {
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

    private final boolean buildSurfaceMaps(List<Request> requests, Map<Surface, StreamId> surfaceToStreamMap, Map<Surface, OutputId> surfaceToOutputMap, Map<StreamId, Surface> streamToSurfaceMap) {
        if (requests.isEmpty()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("build(...) should never be called with an empty request list!");
            return false;
        }
        for (Request request : requests) {
            Iterator<StreamId> it = request.getStreams().iterator();
            boolean z = false;
            while (it.hasNext()) {
                int value = it.next().getValue();
                if (!streamToSurfaceMap.containsKey(StreamId.m1472boximpl(value))) {
                    Surface surface = this.streamToSurfaceMap.get(StreamId.m1472boximpl(value));
                    if (surface != null) {
                        surfaceToStreamMap.put(surface, StreamId.m1472boximpl(value));
                        streamToSurfaceMap.put(StreamId.m1472boximpl(value), surface);
                        CameraStream cameraStreamM1470getaKI5c8E = this.streamGraph.m1470getaKI5c8E(value);
                        if (cameraStreamM1470getaKI5c8E == null) {
                            Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                            return false;
                        }
                        for (OutputStream outputStream : cameraStreamM1470getaKI5c8E.getOutputs()) {
                            Surface surface2 = this.outputToSurfaceMap.get(OutputId.m1361boximpl(outputStream.getId()));
                            if (surface2 == null) {
                                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                                return false;
                            }
                            surfaceToOutputMap.put(surface2, OutputId.m1361boximpl(outputStream.getId()));
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
                Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: buildCaptureRequestBuilder-0UCm73U, reason: not valid java name */
    private final CaptureRequest.Builder m1513buildCaptureRequestBuilder0UCm73U(Request request, int requestTemplate) {
        CaptureRequest.Builder builderMo1482createCaptureRequest2PPcXtw;
        if (request.getInputRequest() != null) {
            TotalCaptureResult totalCaptureResult = (TotalCaptureResult) request.getInputRequest().getFrameInfo().unwrapAs(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class));
            if (totalCaptureResult == null) {
                LifecycleRegistry$$ExternalSyntheticBUOutline0.m152m("Failed to unwrap FrameInfo ", request.getInputRequest().getFrameInfo(), " as TotalCaptureResult");
                return null;
            }
            builderMo1482createCaptureRequest2PPcXtw = this.session.getDevice().createReprocessCaptureRequest(totalCaptureResult);
        } else {
            builderMo1482createCaptureRequest2PPcXtw = this.session.getDevice().mo1482createCaptureRequest2PPcXtw(requestTemplate);
        }
        if (builderMo1482createCaptureRequest2PPcXtw != null) {
            return builderMo1482createCaptureRequest2PPcXtw;
        }
        if (request.getInputRequest() != null) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "Failed to create a ReprocessingCaptureRequest.Builder from " + request.getInputRequest().getFrameInfo() + '!');
            }
        } else if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", "Failed to create a CaptureRequest.Builder from " + ((Object) RequestTemplate.m1447toStringimpl(requestTemplate)) + '!');
        }
        return null;
    }
}
