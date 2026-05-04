package androidx.camera.camera2.pipe.internal;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameDistributor implements AutoCloseable, Request.Listener {
    public static final Companion Companion = new Companion(null);
    private final FrameCaptureQueue frameCaptureQueue;
    private final OutputDistributor frameInfoDistributor;
    private FrameStartedListener frameStartedListener;
    private final Map imageDistributors;
    private final Set imageStreams;
    private final StreamGraphImpl streamGraphImpl;

    public interface FrameStartedListener {
        void onFrameStarted(FrameReference frameReference);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
    public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public /* synthetic */ void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public /* synthetic */ void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        Request.Listener.CC.m1746$default$onTotalCaptureResultCcXjc1I(this, requestMetadata, j, frameInfo);
    }

    public FrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, boolean z, long j) {
        Intrinsics.checkNotNullParameter(streamGraphImpl, "streamGraphImpl");
        Intrinsics.checkNotNullParameter(frameCaptureQueue, "frameCaptureQueue");
        this.streamGraphImpl = streamGraphImpl;
        this.frameCaptureQueue = frameCaptureQueue;
        this.frameInfoDistributor = new OutputDistributor(0, NoOpFinalizer.INSTANCE, OutputMatcher.Companion.getEXACT(), 1, null);
        Map imageSourceMap$camera_camera2_pipe = streamGraphImpl.getImageSourceMap$camera_camera2_pipe();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(imageSourceMap$camera_camera2_pipe.size()));
        for (Map.Entry entry : imageSourceMap$camera_camera2_pipe.entrySet()) {
            Object key = entry.getKey();
            int iM1792unboximpl = ((StreamId) entry.getKey()).m1792unboximpl();
            final ImageSource imageSource = (ImageSource) entry.getValue();
            final CameraStream cameraStreamMo1782getaKI5c8E = this.streamGraphImpl.mo1782getaKI5c8E(iM1792unboximpl);
            if (cameraStreamMo1782getaKI5c8E == null) {
                throw new IllegalStateException("Required value was null.");
            }
            CameraStream.Config configM1921getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m1921getCameraStreamConfigaKI5c8E(iM1792unboximpl);
            Intrinsics.checkNotNull(configM1921getCameraStreamConfigaKI5c8E);
            configM1921getCameraStreamConfigaKI5c8E.getImageSourceConfig();
            Intrinsics.checkNotNull(null);
            OutputMatcher outputMatcherM1938selectTimestampMatcher5y4XNsE = Companion.m1938selectTimestampMatcher5y4XNsE(iM1792unboximpl, configM1921getCameraStreamConfigaKI5c8E, null, z, j);
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            for (OutputStream outputStream : cameraStreamMo1782getaKI5c8E.getOutputs()) {
                mapCreateMapBuilder.put(OutputId.m1665boximpl(outputStream.mo1686getId4LaLFng()), new OutputDistributor(0, ClosingFinalizer.INSTANCE, outputMatcherM1938selectTimestampMatcher5y4XNsE, 1, null));
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
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            CameraStream cameraStreamMo1782getaKI5c8E2 = this.streamGraphImpl.mo1782getaKI5c8E(((StreamId) it.next()).m1792unboximpl());
            if (cameraStreamMo1782getaKI5c8E2 == null) {
                throw new IllegalStateException("Required value was null.");
            }
            arrayList.add(cameraStreamMo1782getaKI5c8E2);
        }
        this.imageStreams = CollectionsKt.toSet(arrayList);
        this.frameStartedListener = new FrameStartedListener() { // from class: androidx.camera.camera2.pipe.internal.FrameDistributor$$ExternalSyntheticLambda1
            @Override // androidx.camera.camera2.pipe.internal.FrameDistributor.FrameStartedListener
            public final void onFrameStarted(FrameReference frameReference) {
                Intrinsics.checkNotNullParameter(frameReference, "it");
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        FrameState frameState = new FrameState(requestMetadata, j, j2, this.imageStreams, null);
        this.frameInfoDistributor.m1949onOutputStartedqGubWw0(j, j2, j, frameState.getFrameInfoOutput());
        int size = frameState.getImageOutputs().size();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) frameState.getImageOutputs().get(i);
            Object obj = this.imageDistributors.get(StreamId.m1786boximpl(imageOutput.m1945getStreamIdptHMqGs()));
            if (obj == null) {
                throw new IllegalStateException("Required value was null.");
            }
            Object obj2 = ((Map) obj).get(OutputId.m1665boximpl(imageOutput.m1944getOutputId4LaLFng()));
            if (obj2 == null) {
                throw new IllegalStateException("Required value was null.");
            }
            OutputDistributor outputDistributor = (OutputDistributor) obj2;
            outputDistributor.m1949onOutputStartedqGubWw0(j, j2, j2, imageOutput);
            if (!requestMetadata.getStreams().keySet().contains(StreamId.m1786boximpl(imageOutput.m1945getStreamIdptHMqGs()))) {
                outputDistributor.m1947onOutputFailureVw7M1qk(frameState.m1939getFrameNumberUgla2oM());
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
    public void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo result) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        this.frameInfoDistributor.m1948onOutputResultDvZWqE8(j, OutputResult.m1955constructorimpl(result));
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Map map = (Map) this.imageDistributors.get(StreamId.m1786boximpl(i));
        if (map == null) {
            return;
        }
        CameraStream.Config configM1921getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m1921getCameraStreamConfigaKI5c8E(i);
        if (configM1921getCameraStreamConfigaKI5c8E == null) {
            throw new IllegalStateException("Required value was null.");
        }
        configM1921getCameraStreamConfigaKI5c8E.getImageSourceConfig();
        if (!map.containsKey(OutputId.m1665boximpl(i2))) {
            throw new IllegalStateException("Check failed.");
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((OutputDistributor) it.next()).m1947onOutputFailureVw7M1qk(j);
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
        OutputDistributor outputDistributor = this.frameInfoDistributor;
        OutputResult.Companion companion = OutputResult.Companion;
        outputDistributor.m1948onOutputResultDvZWqE8(j, OutputResult.m1955constructorimpl(OutputStatus.m1672boximpl(OutputStatus.Companion.m1680getERROR_OUTPUT_FAILEDU7r42EA())));
        if (requestFailure.getWasImageCaptured()) {
            return;
        }
        Iterator it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) this.imageDistributors.get(StreamId.m1786boximpl(((StreamId) it.next()).m1792unboximpl()));
            if (map != null) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    ((OutputDistributor) it2.next()).m1947onOutputFailureVw7M1qk(j);
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.frameCaptureQueue.remove(request);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.frameCaptureQueue.close();
        this.frameInfoDistributor.close();
        Iterator it = this.imageDistributors.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((Map) it.next()).values().iterator();
            while (it2.hasNext()) {
                ((OutputDistributor) it2.next()).close();
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: selectTimestampMatcher-5y4XNsE, reason: not valid java name */
        public final OutputMatcher m1938selectTimestampMatcher5y4XNsE(int i, CameraStream.Config config, ImageSourceConfig imageSourceConfig, boolean z, long j) {
            if (!z) {
                if (Build.VERSION.SDK_INT >= 33) {
                    List outputs = config.getOutputs();
                    if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                        Iterator it = outputs.iterator();
                        while (it.hasNext()) {
                            ((OutputStream.Config) it.next()).m1697getTimestampBasepcPfPbY();
                            OutputStream.TimestampBase.Companion.m1736getTIMESTAMP_BASE_REALTIME6HVI0MA();
                        }
                    }
                }
                return OutputMatcher.Companion.getEXACT();
            }
            if (Build.VERSION.SDK_INT >= 33) {
                List outputs2 = config.getOutputs();
                if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                    Iterator it2 = outputs2.iterator();
                    while (it2.hasNext()) {
                        ((OutputStream.Config) it2.next()).m1697getTimestampBasepcPfPbY();
                    }
                }
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 29 && i2 < 33) {
                return OutputMatcher.Companion.getEXACT();
            }
            throw null;
        }
    }
}
