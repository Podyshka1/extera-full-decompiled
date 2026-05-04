package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.FrameState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameImpl implements FrameReference, AutoCloseable {
    private final AtomicBoolean closed;
    private final FrameState frameState;
    private final Set imageStreams;
    private final Set outputStreams;

    public FrameImpl(FrameState frameState, Set imageStreams) {
        Intrinsics.checkNotNullParameter(frameState, "frameState");
        Intrinsics.checkNotNullParameter(imageStreams, "imageStreams");
        this.frameState = frameState;
        this.imageStreams = imageStreams;
        List imageOutputs = frameState.getImageOutputs();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(imageOutputs, 10));
        Iterator it = imageOutputs.iterator();
        while (it.hasNext()) {
            arrayList.add(OutputId.m1665boximpl(((FrameState.ImageOutput) it.next()).m1944getOutputId4LaLFng()));
        }
        this.outputStreams = CollectionsKt.toSet(arrayList);
        this.closed = AtomicFU.atomic(false);
    }

    public /* synthetic */ FrameImpl(FrameState frameState, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 2) != 0) {
            List imageOutputs = frameState.getImageOutputs();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(imageOutputs, 10));
            Iterator it = imageOutputs.iterator();
            while (it.hasNext()) {
                arrayList.add(StreamId.m1786boximpl(((FrameState.ImageOutput) it.next()).m1945getStreamIdptHMqGs()));
            }
            set = CollectionsKt.toSet(arrayList);
        }
        this(frameState, set);
    }

    public Set getImageStreams() {
        return this.imageStreams;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        release();
    }

    private final boolean release() {
        if (!this.closed.compareAndSet(false, true)) {
            return false;
        }
        this.frameState.getFrameInfoOutput().decrement();
        int size = this.frameState.getImageOutputs().size();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) this.frameState.getImageOutputs().get(i);
            if (getImageStreams().contains(StreamId.m1786boximpl(imageOutput.m1945getStreamIdptHMqGs()))) {
                imageOutput.decrement();
            }
        }
        return true;
    }

    protected final void finalize() {
        if (release() && Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "Failed to close " + this + "! This indicates a memory leak and could cause the camera to stall, or images to be lost.");
        }
    }

    public String toString() {
        return this.frameState.toString();
    }
}
