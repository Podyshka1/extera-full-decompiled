package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraTimestamp;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequences;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.SensorTimestamp;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CaptureSequence extends CameraCaptureSession.CaptureCallback implements Camera2CaptureCallback, CaptureSequence {
    private volatile Integer _sequenceNumber;
    private final String cameraId;
    private final List captureMetadataList;
    private final List captureRequestList;
    private final long debugId;
    private final CompletableDeferred hasStarted;
    private final List listeners;
    private final boolean repeating;
    private final CaptureSequence.CaptureSequenceListener sequenceListener;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Map surfaceToOutputMap;
    private final Map surfaceToStreamMap;

    public /* synthetic */ Camera2CaptureSequence(String str, boolean z, List list, List list2, List list3, CaptureSequence.CaptureSequenceListener captureSequenceListener, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, list, list2, list3, captureSequenceListener, map, map2, streamGraph, strictMode);
    }

    private Camera2CaptureSequence(String cameraId, boolean z, List captureRequestList, List captureMetadataList, List listeners, CaptureSequence.CaptureSequenceListener sequenceListener, Map surfaceToStreamMap, Map surfaceToOutputMap, StreamGraph streamGraph, StrictMode strictMode) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(captureRequestList, "captureRequestList");
        Intrinsics.checkNotNullParameter(captureMetadataList, "captureMetadataList");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(sequenceListener, "sequenceListener");
        Intrinsics.checkNotNullParameter(surfaceToStreamMap, "surfaceToStreamMap");
        Intrinsics.checkNotNullParameter(surfaceToOutputMap, "surfaceToOutputMap");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        this.cameraId = cameraId;
        this.repeating = z;
        this.captureRequestList = captureRequestList;
        this.captureMetadataList = captureMetadataList;
        this.listeners = listeners;
        this.sequenceListener = sequenceListener;
        this.surfaceToStreamMap = surfaceToStreamMap;
        this.surfaceToOutputMap = surfaceToOutputMap;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceDebugIds().incrementAndGet();
        this.hasStarted = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (getCaptureRequestList().size() != getCaptureMetadataList().size()) {
            throw new IllegalStateException("CaptureRequestList and CaptureMetadataList must have a 1:1 mapping.");
        }
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String m1826getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public boolean getRepeating() {
        return this.repeating;
    }

    public List getCaptureRequestList() {
        return this.captureRequestList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List getCaptureMetadataList() {
        return this.captureMetadataList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List getListeners() {
        return this.listeners;
    }

    public CaptureSequence.CaptureSequenceListener getSequenceListener() {
        return this.sequenceListener;
    }

    public int getSequenceNumber() {
        int iIntValue;
        if (this._sequenceNumber == null) {
            synchronized (this) {
                Integer num = this._sequenceNumber;
                if (num == null) {
                    throw new IllegalStateException(("SequenceNumber has not been set for " + this + '!').toString());
                }
                iIntValue = num.intValue();
            }
            return iIntValue;
        }
        Integer num2 = this._sequenceNumber;
        if (num2 != null) {
            return num2.intValue();
        }
        throw new IllegalStateException(("SequenceNumber has not been set for " + this + '!').toString());
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public void setSequenceNumber(int i) {
        this._sequenceNumber = Integer.valueOf(i);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureStarted(CameraCaptureSession captureSession, CaptureRequest captureRequest, long j, long j2) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        onCaptureStarted(captureRequest, j2, j);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureStarted(CaptureRequest captureRequest, long j, long j2) {
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureStarted");
        long jM1617constructorimpl = CameraTimestamp.m1617constructorimpl(j2);
        long jM1643constructorimpl = FrameNumber.m1643constructorimpl(j);
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1394onStarteduGKBvU4(requestMetadata, jM1643constructorimpl, jM1617constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1394onStarteduGKBvU4(requestMetadata, jM1643constructorimpl, jM1617constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureProgressed(CameraCaptureSession captureSession, CaptureRequest captureRequest, CaptureResult partialCaptureResult) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(partialCaptureResult, "partialCaptureResult");
        onCaptureProgressed(captureRequest, partialCaptureResult);
    }

    public void onCaptureProgressed(CaptureRequest captureRequest, CaptureResult partialCaptureResult) {
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(partialCaptureResult, "partialCaptureResult");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProgressed");
        long jM1643constructorimpl = FrameNumber.m1643constructorimpl(partialCaptureResult.getFrameNumber());
        AndroidFrameMetadata androidFrameMetadata = new AndroidFrameMetadata(partialCaptureResult, m1826getCameraIdDz_R5H8(), null);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1391onPartialCaptureResultCcXjc1I(requestMetadata, jM1643constructorimpl, androidFrameMetadata);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1391onPartialCaptureResultCcXjc1I(requestMetadata, jM1643constructorimpl, androidFrameMetadata);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onReadoutStarted(CameraCaptureSession session, CaptureRequest captureRequest, long j, long j2) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onReadoutStarted");
        long jM1771constructorimpl = SensorTimestamp.m1771constructorimpl(j);
        long jM1643constructorimpl = FrameNumber.m1643constructorimpl(j2);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1392onReadoutStartedmP9r9w(requestMetadata, jM1643constructorimpl, jM1771constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1392onReadoutStartedmP9r9w(requestMetadata, jM1643constructorimpl, jM1771constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession captureSession, CaptureRequest captureRequest, TotalCaptureResult captureResult) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        mo1822onCaptureCompletedrmrZIYk(captureRequest, captureResult, FrameNumber.m1643constructorimpl(captureResult.getFrameNumber()));
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureCompleted-rmrZIYk */
    public void mo1822onCaptureCompletedrmrZIYk(CaptureRequest captureRequest, TotalCaptureResult captureResult, long j) {
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureCompleted");
        Trace.beginSection("onCaptureSequenceComplete");
        getSequenceListener().onCaptureSequenceComplete(this);
        Trace.endSection();
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        AndroidFrameInfo androidFrameInfo = new AndroidFrameInfo(captureResult, m1826getCameraIdDz_R5H8(), requestMetadata, null);
        Trace.beginSection("onTotalCaptureResult");
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1395onTotalCaptureResultCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1395onTotalCaptureResultCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.beginSection("onComplete");
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            ((Request.Listener) getListeners().get(i3)).mo1389onCompleteCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i4)).mo1389onCompleteCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureProcessProgressed(CaptureRequest captureRequest, int i) {
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProcessProgressed");
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Request.Listener) getListeners().get(i2)).onCaptureProgress(requestMetadata, i);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i3)).onCaptureProgress(requestMetadata, i);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureFailed(CameraCaptureSession captureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(captureFailure, "captureFailure");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m1825invokeCaptureFailureCcXjc1I(requestMetadata, FrameNumber.m1643constructorimpl(captureFailure.getFrameNumber()), new AndroidCaptureFailure(requestMetadata, captureFailure));
        Trace.endSection();
    }

    /* JADX INFO: renamed from: invokeCaptureFailure-CcXjc1I, reason: not valid java name */
    private final void m1825invokeCaptureFailureCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        getSequenceListener().onCaptureSequenceComplete(this);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1390onFailedCcXjc1I(requestMetadata, j, requestFailure);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1390onFailedCcXjc1I(requestMetadata, j, requestFailure);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureFailed-RuT0dZU */
    public void mo1823onCaptureFailedRuT0dZU(CaptureRequest captureRequest, long j) {
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m1825invokeCaptureFailureCcXjc1I(requestMetadata, j, new ExtensionRequestFailure(requestMetadata, false, j, 0, null));
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureBufferLost(CameraCaptureSession captureSession, CaptureRequest captureRequest, Surface surface, long j) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(surface, "surface");
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureBufferLost");
        long jM1643constructorimpl = FrameNumber.m1643constructorimpl(j);
        StreamId streamIdM1824getStreamIdLfjdq8s = m1824getStreamIdLfjdq8s(surface);
        OutputId outputId = (OutputId) this.surfaceToOutputMap.get(surface);
        if (streamIdM1824getStreamIdLfjdq8s == null) {
            throw new IllegalStateException(("Unable to find the streamId for " + surface + " on " + ((Object) FrameNumber.m1647toStringimpl(jM1643constructorimpl))).toString());
        }
        if (outputId == null) {
            throw new IllegalStateException(("Unable to find the outputId for " + surface + " on " + ((Object) FrameNumber.m1647toStringimpl(jM1643constructorimpl))).toString());
        }
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            ((Request.Listener) getListeners().get(i)).mo1387onBufferLostDlC0U5Y(requestMetadata, jM1643constructorimpl, streamIdM1824getStreamIdLfjdq8s.m1792unboximpl());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i2)).mo1387onBufferLostDlC0U5Y(requestMetadata, jM1643constructorimpl, streamIdM1824getStreamIdLfjdq8s.m1792unboximpl());
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            ((Request.Listener) getListeners().get(i3)).mo1388onBufferLostiiEMlm4(requestMetadata, jM1643constructorimpl, streamIdM1824getStreamIdLfjdq8s.m1792unboximpl(), outputId.m1671unboximpl());
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            ((Request.Listener) requestMetadata.getRequest().getListeners().get(i4)).mo1388onBufferLostiiEMlm4(requestMetadata, jM1643constructorimpl, streamIdM1824getStreamIdLfjdq8s.m1792unboximpl(), outputId.m1671unboximpl());
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    /* JADX INFO: renamed from: getStreamId-Lfjdq8s, reason: not valid java name */
    private final StreamId m1824getStreamIdLfjdq8s(Surface surface) {
        CameraStream stream;
        StreamId streamId = (StreamId) this.surfaceToStreamMap.get(surface);
        if (streamId != null) {
            return streamId;
        }
        OutputId outputId = (OutputId) this.surfaceToOutputMap.get(surface);
        OutputStream outputStreamMo1783getiYJqvbA = outputId != null ? this.streamGraph.mo1783getiYJqvbA(outputId.m1671unboximpl()) : null;
        if (outputStreamMo1783getiYJqvbA == null || (stream = outputStreamMo1783getiYJqvbA.getStream()) == null) {
            return null;
        }
        return StreamId.m1786boximpl(stream.m1616getIdptHMqGs());
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceCompleted(CameraCaptureSession captureSession, int i, long j) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        onCaptureSequenceCompleted(i, j);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceCompleted(int i, long j) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceCompleted");
        this.hasStarted.complete(Unit.INSTANCE);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == i)) {
            String str = "onCaptureSequenceCompleted was invoked on " + getSequenceNumber() + ", but expected " + i + '!';
            if (strictMode.getEnabled()) {
                throw new IllegalStateException(str);
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        long jM1643constructorimpl = FrameNumber.m1643constructorimpl(j);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i2 = 0; i2 < size; i2++) {
            RequestMetadata requestMetadata = (RequestMetadata) getCaptureMetadataList().get(i2);
            int size2 = getListeners().size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((Request.Listener) getListeners().get(i3)).mo1393onRequestSequenceCompletedRuT0dZU(requestMetadata, jM1643constructorimpl);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i4 = 0; i4 < size3; i4++) {
            RequestMetadata requestMetadata2 = (RequestMetadata) getCaptureMetadataList().get(i4);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i5 = 0; i5 < size4; i5++) {
                ((Request.Listener) requestMetadata2.getRequest().getListeners().get(i5)).mo1393onRequestSequenceCompletedRuT0dZU(requestMetadata2, jM1643constructorimpl);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceAborted(CameraCaptureSession captureSession, int i) {
        Intrinsics.checkNotNullParameter(captureSession, "captureSession");
        onCaptureSequenceAborted(i);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceAborted(int i) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceAborted");
        this.hasStarted.complete(Unit.INSTANCE);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == i)) {
            String str = "onCaptureSequenceAborted was invoked on " + getSequenceNumber() + ", but expected " + i + '!';
            if (strictMode.getEnabled()) {
                throw new IllegalStateException(str);
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i2 = 0; i2 < size; i2++) {
            RequestMetadata requestMetadata = (RequestMetadata) getCaptureMetadataList().get(i2);
            int size2 = getListeners().size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((Request.Listener) getListeners().get(i3)).onRequestSequenceAborted(requestMetadata);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i4 = 0; i4 < size3; i4++) {
            RequestMetadata requestMetadata2 = (RequestMetadata) getCaptureMetadataList().get(i4);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i5 = 0; i5 < size4; i5++) {
                ((Request.Listener) requestMetadata2.getRequest().getListeners().get(i5)).onRequestSequenceAborted(requestMetadata2);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    private final RequestMetadata readRequestMetadata(CaptureRequest captureRequest) {
        int size = getCaptureRequestList().size();
        for (int i = 0; i < size; i++) {
            if (getCaptureRequestList().get(i) == captureRequest) {
                return (RequestMetadata) getCaptureMetadataList().get(i);
            }
        }
        throw new IllegalArgumentException("Failed to find CaptureRequest " + captureRequest + " in " + getCaptureRequestList());
    }

    public final Object awaitStarted$camera_camera2_pipe(Continuation continuation) {
        Object objAwait = this.hasStarted.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    public String toString() {
        return "Camera2CaptureSequence-" + this.debugId;
    }
}
