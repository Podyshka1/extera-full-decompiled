package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J'\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0007J\u001f\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001f\u0010 J\b\u0010!\u001a\u00020\tH\u0016J\b\u0010\"\u001a\u00020\tH\u0016J\b\u0010#\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Landroidx/camera/camera2/pipe/graph/Listener3A;", "Landroidx/camera/camera2/pipe/Request$Listener;", "Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;", "<init>", "()V", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/camera/camera2/pipe/graph/Result3AStateListener;", "onRequestSequenceCreated", _UrlKt.FRAGMENT_ENCODE_SET, "requestMetadata", "Landroidx/camera/camera2/pipe/RequestMetadata;", "onPartialCaptureResult", "frameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "captureResult", "Landroidx/camera/camera2/pipe/FrameMetadata;", "onPartialCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V", "onTotalCaptureResult", "totalCaptureResult", "Landroidx/camera/camera2/pipe/FrameInfo;", "onTotalCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "addListener", "listener", "removeListener", "updateListeners", "requestNumber", "Landroidx/camera/camera2/pipe/RequestNumber;", "metadata", "updateListeners-voP-kFw", "(JLandroidx/camera/camera2/pipe/FrameMetadata;)V", "onStopRepeating", "onGraphStopped", "onGraphShutdown", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class Listener3A implements Request.Listener, GraphLoop.Listener {
    private final CopyOnWriteArrayList<Result3AStateListener> listeners = new CopyOnWriteArrayList<>();

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().mo1511onRequestSequenceCreatedDThHKJ0(requestMetadata.mo1048getRequestNumbermy6kx4g());
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo1030onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameMetadata captureResult) {
        m1508updateListenersvoPkFw(requestMetadata.mo1048getRequestNumbermy6kx4g(), captureResult);
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo996onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo totalCaptureResult) {
        m1508updateListenersvoPkFw(requestMetadata.mo1048getRequestNumbermy6kx4g(), totalCaptureResult.getMetadata());
    }

    public final void addListener(Result3AStateListener listener) {
        this.listeners.add(listener);
    }

    public final void removeListener(Result3AStateListener listener) {
        this.listeners.remove(listener);
    }

    /* JADX INFO: renamed from: updateListeners-voP-kFw, reason: not valid java name */
    private final void m1508updateListenersvoPkFw(long requestNumber, FrameMetadata metadata) {
        for (Result3AStateListener result3AStateListener : this.listeners) {
            if (result3AStateListener.mo1512updatevoPkFw(requestNumber, metadata)) {
                this.listeners.remove(result3AStateListener);
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        Iterator<Result3AStateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onStopRepeating();
        }
    }
}
