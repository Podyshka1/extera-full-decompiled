package androidx.camera.camera2.pipe.internal;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.ImageSourceConfig;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.FrameState;
import androidx.camera.camera2.pipe.internal.OutputResult;
import androidx.camera.camera2.pipe.media.ClosingFinalizer;
import androidx.camera.camera2.pipe.media.ExpectedOutputsListener;
import androidx.camera.camera2.pipe.media.ImageListener;
import androidx.camera.camera2.pipe.media.ImageSource;
import androidx.camera.camera2.pipe.media.NoOpFinalizer;
import androidx.camera.camera2.pipe.media.OutputImage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 C2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0002DCB'\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ/\u0010#\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J'\u0010(\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010+\u001a\u00020\u00142\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0014H\u0016¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010/R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00100R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u0018018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R2\u00106\u001a \u0012\u0004\u0012\u00020\u001d\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u0002050104048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u000209088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\"\u0010=\u001a\u00020<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006E"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameDistributor;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Landroidx/camera/camera2/pipe/Request$Listener;", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "streamGraphImpl", "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;", "frameCaptureQueue", _UrlKt.FRAGMENT_ENCODE_SET, "isCameraTimebaseRealtime", _UrlKt.FRAGMENT_ENCODE_SET, "realtimeToMonotonicOffsetNs", "<init>", "(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;ZJ)V", "Landroidx/camera/camera2/pipe/RequestMetadata;", "requestMetadata", "Landroidx/camera/camera2/pipe/FrameNumber;", "frameNumber", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "timestamp", _UrlKt.FRAGMENT_ENCODE_SET, "onStarted-uGKBvU4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V", "onStarted", "Landroidx/camera/camera2/pipe/FrameInfo;", "result", "onComplete-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "onComplete", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "Landroidx/camera/camera2/pipe/OutputId;", "outputId", "onBufferLost-iiEMlm4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V", "onBufferLost", "Landroidx/camera/camera2/pipe/RequestFailure;", "requestFailure", "onFailed-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V", "onFailed", "Landroidx/camera/camera2/pipe/Request;", "request", "onAborted", "(Landroidx/camera/camera2/pipe/Request;)V", "close", "()V", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;", "Landroidx/camera/camera2/pipe/internal/OutputDistributor;", "frameInfoDistributor", "Landroidx/camera/camera2/pipe/internal/OutputDistributor;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/media/OutputImage;", "imageDistributors", "Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream;", "imageStreams", "Ljava/util/Set;", "Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;", "frameStartedListener", "Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;", "getFrameStartedListener", "()Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;", "setFrameStartedListener", "(Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;)V", "Companion", "FrameStartedListener", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFrameDistributor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameDistributor.kt\nandroidx/camera/camera2/pipe/internal/FrameDistributor\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n1#1,409:1\n465#2:410\n415#2:411\n1252#3,4:412\n1563#3:416\n1634#3,3:417\n64#4:420\n68#4:421\n68#4:422\n*S KotlinDebug\n*F\n+ 1 FrameDistributor.kt\nandroidx/camera/camera2/pipe/internal/FrameDistributor\n*L\n101#1:410\n101#1:411\n101#1:412,4\n162#1:416\n162#1:417,3\n236#1:420\n276#1:421\n153#1:422\n*E\n"})
public final class FrameDistributor implements AutoCloseable, Request.Listener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final FrameCaptureQueue frameCaptureQueue;
    private final OutputDistributor<FrameInfo> frameInfoDistributor = new OutputDistributor<>(0, NoOpFinalizer.INSTANCE, OutputMatcher.INSTANCE.getEXACT(), 1, null);
    private FrameStartedListener frameStartedListener;
    private final Map<StreamId, Map<OutputId, OutputDistributor<OutputImage>>> imageDistributors;
    private final Set<CameraStream> imageStreams;
    private final StreamGraphImpl streamGraphImpl;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;", _UrlKt.FRAGMENT_ENCODE_SET, "onFrameStarted", _UrlKt.FRAGMENT_ENCODE_SET, "frameReference", "Landroidx/camera/camera2/pipe/FrameReference;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public interface FrameStartedListener {
        void onFrameStarted(FrameReference frameReference);
    }

    public static void $r8$lambda$rWkGfvD7xGINf9EVDvFJlvgalyk(FrameReference frameReference) {
    }

    public FrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, boolean z, long j) {
        this.streamGraphImpl = streamGraphImpl;
        this.frameCaptureQueue = frameCaptureQueue;
        Map<StreamId, ImageSource> imageSourceMap$camera_camera2_pipe = streamGraphImpl.getImageSourceMap$camera_camera2_pipe();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(imageSourceMap$camera_camera2_pipe.size()));
        Iterator<T> it = imageSourceMap$camera_camera2_pipe.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            int value = ((StreamId) entry.getKey()).getValue();
            final ImageSource imageSource = (ImageSource) entry.getValue();
            final CameraStream cameraStreamM1380getaKI5c8E = this.streamGraphImpl.m1380getaKI5c8E(value);
            if (cameraStreamM1380getaKI5c8E == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                throw null;
            }
            CameraStream.Config configM1518getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m1518getCameraStreamConfigaKI5c8E(value);
            configM1518getCameraStreamConfigaKI5c8E.getImageSourceConfig();
            OutputMatcher outputMatcherM1535selectTimestampMatcher5y4XNsE = INSTANCE.m1535selectTimestampMatcher5y4XNsE(value, configM1518getCameraStreamConfigaKI5c8E, null, z, j);
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            for (OutputStream outputStream : cameraStreamM1380getaKI5c8E.getOutputs()) {
                mapCreateMapBuilder.put(OutputId.m1271boximpl(outputStream.getId()), new OutputDistributor(0, ClosingFinalizer.INSTANCE, outputMatcherM1535selectTimestampMatcher5y4XNsE, 1, null));
            }
            final Map mapBuild = MapsKt.build(mapCreateMapBuilder);
            imageSource.setImageListener(new ImageListener() { // from class: androidx.camera.camera2.pipe.internal.FrameDistributor$imageDistributors$1$1
            });
            imageSource.setExpectedOutputsListener(new ExpectedOutputsListener() { // from class: androidx.camera.camera2.pipe.internal.FrameDistributor$$ExternalSyntheticLambda0
            });
            linkedHashMap.put(key, mapBuild);
        }
        this.imageDistributors = linkedHashMap;
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(setKeySet, 10));
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            CameraStream cameraStreamM1380getaKI5c8E2 = this.streamGraphImpl.m1380getaKI5c8E(((StreamId) it2.next()).getValue());
            if (cameraStreamM1380getaKI5c8E2 == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                throw null;
            }
            arrayList.add(cameraStreamM1380getaKI5c8E2);
        }
        this.imageStreams = CollectionsKt.toSet(arrayList);
        this.frameStartedListener = new FrameStartedListener() { // from class: androidx.camera.camera2.pipe.internal.FrameDistributor$$ExternalSyntheticLambda1
            @Override // androidx.camera.camera2.pipe.internal.FrameDistributor.FrameStartedListener
            public final void onFrameStarted(FrameReference frameReference) {
                FrameDistributor.$r8$lambda$rWkGfvD7xGINf9EVDvFJlvgalyk(frameReference);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo1033onStarteduGKBvU4(RequestMetadata requestMetadata, long frameNumber, long timestamp) {
        FrameState frameState = new FrameState(requestMetadata, frameNumber, timestamp, this.imageStreams, null);
        this.frameInfoDistributor.m1546onOutputStartedqGubWw0(frameNumber, timestamp, frameNumber, frameState.getFrameInfoOutput());
        int size = frameState.getImageOutputs().size();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = frameState.getImageOutputs().get(i);
            Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m1382boximpl(imageOutput.getStreamId()));
            if (map == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                return;
            }
            OutputDistributor<OutputImage> outputDistributor = map.get(OutputId.m1271boximpl(imageOutput.getOutputId()));
            if (outputDistributor == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                return;
            }
            OutputDistributor<OutputImage> outputDistributor2 = outputDistributor;
            outputDistributor2.m1546onOutputStartedqGubWw0(frameNumber, timestamp, timestamp, imageOutput);
            if (!requestMetadata.getStreams().keySet().contains(StreamId.m1382boximpl(imageOutput.getStreamId()))) {
                outputDistributor2.m1544onOutputFailureVw7M1qk(frameState.getFrameNumber());
            }
        }
        FrameImpl frameImpl = new FrameImpl(frameState, null, 2, 0 == true ? 1 : 0);
        this.frameStartedListener.onFrameStarted(frameImpl);
        if (!requestMetadata.getRepeating()) {
            this.frameCaptureQueue.remove(requestMetadata.getRequest());
        }
        frameImpl.close();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo994onCompleteCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo result) {
        this.frameInfoDistributor.m1545onOutputResultDvZWqE8(frameNumber, OutputResult.m1552constructorimpl(result));
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo1029onBufferLostiiEMlm4(RequestMetadata requestMetadata, long frameNumber, int streamId, int outputId) {
        Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m1382boximpl(streamId));
        if (map == null) {
            return;
        }
        CameraStream.Config configM1518getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m1518getCameraStreamConfigaKI5c8E(streamId);
        if (configM1518getCameraStreamConfigaKI5c8E == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
            return;
        }
        configM1518getCameraStreamConfigaKI5c8E.getImageSourceConfig();
        if (!map.containsKey(OutputId.m1271boximpl(outputId))) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
            return;
        }
        Iterator<OutputDistributor<OutputImage>> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().m1544onOutputFailureVw7M1qk(frameNumber);
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo995onFailedCcXjc1I(RequestMetadata requestMetadata, long frameNumber, RequestFailure requestFailure) {
        OutputDistributor<FrameInfo> outputDistributor = this.frameInfoDistributor;
        OutputResult.Companion companion = OutputResult.INSTANCE;
        outputDistributor.m1545onOutputResultDvZWqE8(frameNumber, OutputResult.m1552constructorimpl(OutputStatus.m1278boximpl(OutputStatus.INSTANCE.m1286getERROR_OUTPUT_FAILEDU7r42EA())));
        if (requestFailure.getWasImageCaptured()) {
            return;
        }
        Iterator<StreamId> it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m1382boximpl(it.next().getValue()));
            if (map != null) {
                Iterator<OutputDistributor<OutputImage>> it2 = map.values().iterator();
                while (it2.hasNext()) {
                    it2.next().m1544onOutputFailureVw7M1qk(frameNumber);
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        this.frameCaptureQueue.remove(request);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.frameCaptureQueue.close();
        this.frameInfoDistributor.close();
        Iterator<Map<OutputId, OutputDistributor<OutputImage>>> it = this.imageDistributors.values().iterator();
        while (it.hasNext()) {
            Iterator<OutputDistributor<OutputImage>> it2 = it.next().values().iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0003¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/StreamId;", "cameraStreamId", "Landroidx/camera/camera2/pipe/CameraStream$Config;", "cameraStreamConfig", "Landroidx/camera/camera2/pipe/ImageSourceConfig;", "imageSourceConfig", _UrlKt.FRAGMENT_ENCODE_SET, "isCameraTimebaseRealtime", _UrlKt.FRAGMENT_ENCODE_SET, "realtimeToMonotonicOffsetNs", "Landroidx/camera/camera2/pipe/internal/OutputMatcher;", "selectTimestampMatcher-5y4XNsE", "(ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;", "selectTimestampMatcher", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFrameDistributor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameDistributor.kt\nandroidx/camera/camera2/pipe/internal/FrameDistributor$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,409:1\n392#1,2:410\n394#1,2:414\n396#1:417\n399#1,3:418\n404#1,3:421\n380#1,2:424\n382#1:428\n383#1,5:430\n388#1:437\n389#1:439\n380#1,2:442\n382#1:446\n383#1:448\n1740#2,2:412\n1742#2:416\n1761#2,2:426\n1763#2:429\n1761#2,2:435\n1763#2:438\n1761#2,2:444\n1763#2:447\n1761#2,3:451\n1761#2,3:454\n1740#2,3:457\n50#3,2:440\n50#3,2:449\n*S KotlinDebug\n*F\n+ 1 FrameDistributor.kt\nandroidx/camera/camera2/pipe/internal/FrameDistributor$Companion\n*L\n347#1:410,2\n347#1:414,2\n347#1:417\n348#1:418,3\n349#1:421,3\n353#1:424,2\n353#1:428\n353#1:430,5\n353#1:437\n353#1:439\n366#1:442,2\n366#1:446\n366#1:448\n347#1:412,2\n347#1:416\n353#1:426,2\n353#1:429\n353#1:435,2\n353#1:438\n366#1:444,2\n366#1:447\n381#1:451,3\n387#1:454,3\n393#1:457,3\n357#1:440,2\n367#1:449,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        /* JADX INFO: renamed from: selectTimestampMatcher-5y4XNsE, reason: not valid java name */
        public final OutputMatcher m1535selectTimestampMatcher5y4XNsE(int cameraStreamId, CameraStream.Config cameraStreamConfig, ImageSourceConfig imageSourceConfig, boolean isCameraTimebaseRealtime, long realtimeToMonotonicOffsetNs) {
            if (!isCameraTimebaseRealtime) {
                if (Build.VERSION.SDK_INT >= 33) {
                    List<OutputStream.Config> outputs = cameraStreamConfig.getOutputs();
                    if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                        Iterator<T> it = outputs.iterator();
                        while (it.hasNext()) {
                            ((OutputStream.Config) it.next()).m1303getTimestampBasepcPfPbY();
                            OutputStream.TimestampBase.INSTANCE.m1342getTIMESTAMP_BASE_REALTIME6HVI0MA();
                        }
                    }
                }
                return OutputMatcher.INSTANCE.getEXACT();
            }
            if (Build.VERSION.SDK_INT >= 33) {
                List<OutputStream.Config> outputs2 = cameraStreamConfig.getOutputs();
                if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                    Iterator<T> it2 = outputs2.iterator();
                    while (it2.hasNext()) {
                        ((OutputStream.Config) it2.next()).m1303getTimestampBasepcPfPbY();
                    }
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 29 && i < 33) {
                return OutputMatcher.INSTANCE.getEXACT();
            }
            throw null;
        }
    }
}
