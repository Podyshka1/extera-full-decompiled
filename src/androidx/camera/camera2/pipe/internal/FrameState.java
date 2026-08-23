package androidx.camera.camera2.pipe.internal;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.FrameId;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.internal.OutputDistributor;
import androidx.camera.camera2.pipe.internal.OutputResult;
import androidx.camera.camera2.pipe.media.OutputImage;
import androidx.camera.camera2.pipe.media.SharedOutputImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameState {
    public static final Companion Companion = new Companion(null);
    private static final AtomicLong frameIds = AtomicFU.atomic(0L);
    private final long frameId;
    private final FrameInfoOutput frameInfoOutput;
    private final long frameNumber;
    private final long frameTimestamp;
    private final List imageOutputs;
    private final CopyOnWriteArrayList listenerStates;
    private final AtomicInt remainingStreamCount;
    private final RequestMetadata requestMetadata;
    private final AtomicRef state;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.FRAME_INFO_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.STREAM_RESULTS_COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[State.COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ FrameState(RequestMetadata requestMetadata, long j, long j2, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(requestMetadata, j, j2, set);
    }

    public final class ImageOutput extends FrameOutput implements OutputDistributor.OutputListener {
        private final int outputId;
        private final AtomicInt remainingOutputResults;
        private final int streamId;
        final /* synthetic */ FrameState this$0;

        public /* synthetic */ ImageOutput(FrameState frameState, int i, int i2, AtomicInt atomicInt, DefaultConstructorMarker defaultConstructorMarker) {
            this(frameState, i, i2, atomicInt);
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk */
        public void mo1943onOutputComplete3ejhThk(long j, long j2, long j3, long j4, Object obj) throws Exception {
            int iM1677unboximpl;
            OutputImage outputImage = (OutputImage) (OutputResult.m1957getAvailableimpl(obj) ? obj : null);
            if (outputImage != null) {
                SharedOutputImage sharedOutputImageFrom = SharedOutputImage.Companion.from(outputImage);
                if (!getInternalResult().complete(OutputResult.m1954boximpl(OutputResult.m1955constructorimpl(sharedOutputImageFrom)))) {
                    UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(sharedOutputImageFrom);
                }
            } else {
                CompletableDeferred internalResult = getInternalResult();
                if (OutputResult.m1957getAvailableimpl(obj)) {
                    iM1677unboximpl = OutputStatus.Companion.m1678getAVAILABLEU7r42EA();
                } else if (obj == null) {
                    iM1677unboximpl = OutputStatus.Companion.m1682getUNAVAILABLEU7r42EA();
                } else {
                    iM1677unboximpl = ((OutputStatus) obj).m1677unboximpl();
                }
                internalResult.complete(OutputResult.m1954boximpl(OutputResult.m1955constructorimpl(OutputStatus.m1672boximpl(iM1677unboximpl))));
            }
            if (this.remainingOutputResults.decrementAndGet() == 0) {
                Iterator it = this.this$0.listenerStates.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                if (it.hasNext()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                    throw null;
                }
                this.this$0.m1940onStreamResultCompleteaKI5c8E(this.streamId);
            }
        }

        private ImageOutput(FrameState frameState, int i, int i2, AtomicInt remainingOutputResults) {
            Intrinsics.checkNotNullParameter(remainingOutputResults, "remainingOutputResults");
            this.this$0 = frameState;
            this.streamId = i;
            this.outputId = i2;
            this.remainingOutputResults = remainingOutputResults;
        }

        /* JADX INFO: renamed from: getStreamId-ptHMqGs, reason: not valid java name */
        public final int m1945getStreamIdptHMqGs() {
            return this.streamId;
        }

        /* JADX INFO: renamed from: getOutputId-4LaLFng, reason: not valid java name */
        public final int m1944getOutputId4LaLFng() {
            return this.outputId;
        }

        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        protected void release() throws Exception {
            OutputResult.Companion companion = OutputResult.Companion;
            CompletableDeferred internalResult = getInternalResult();
            Object obj = null;
            if (internalResult.isCompleted() && !internalResult.isCancelled()) {
                Object objM1961unboximpl = ((OutputResult) internalResult.getCompleted()).m1961unboximpl();
                if (OutputResult.m1957getAvailableimpl(objM1961unboximpl)) {
                    obj = objM1961unboximpl;
                }
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) obj;
            if (sharedOutputImage != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(sharedOutputImage);
            }
        }
    }

    private FrameState(RequestMetadata requestMetadata, long j, long j2, Set imageStreams) {
        Object next;
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(imageStreams, "imageStreams");
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.frameTimestamp = j2;
        this.frameId = Companion.m1942nextFrameIdOMxQvVY();
        this.frameInfoOutput = new FrameInfoOutput();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            int iM1792unboximpl = ((StreamId) it.next()).m1792unboximpl();
            Iterator it2 = imageStreams.iterator();
            while (true) {
                if (it2.hasNext()) {
                    next = it2.next();
                    if (StreamId.m1789equalsimpl0(((CameraStream) next).m1616getIdptHMqGs(), iM1792unboximpl)) {
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            CameraStream cameraStream = (CameraStream) next;
            if (cameraStream != null) {
                List outputs = cameraStream.getOutputs();
                AtomicInt atomicIntAtomic = AtomicFU.atomic(outputs.size());
                int size = outputs.size();
                for (int i = 0; i < size; i++) {
                    listCreateListBuilder.add(new ImageOutput(this, iM1792unboximpl, ((OutputStream) outputs.get(i)).mo1686getId4LaLFng(), atomicIntAtomic, null));
                }
            }
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        this.imageOutputs = listBuild;
        this.state = AtomicFU.atomic(State.STARTED);
        List list = listBuild;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList.add(StreamId.m1786boximpl(((ImageOutput) it3.next()).m1945getStreamIdptHMqGs()));
        }
        this.remainingStreamCount = AtomicFU.atomic(CollectionsKt.distinct(arrayList).size());
        this.listenerStates = new CopyOnWriteArrayList();
    }

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    public final long m1939getFrameNumberUgla2oM() {
        return this.frameNumber;
    }

    public final FrameInfoOutput getFrameInfoOutput() {
        return this.frameInfoOutput;
    }

    public final List getImageOutputs() {
        return this.imageOutputs;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State STARTED = new State("STARTED", 0);
        public static final State FRAME_INFO_COMPLETE = new State("FRAME_INFO_COMPLETE", 1);
        public static final State STREAM_RESULTS_COMPLETE = new State("STREAM_RESULTS_COMPLETE", 2);
        public static final State COMPLETE = new State("COMPLETE", 3);

        private static final /* synthetic */ State[] $values() {
            return new State[]{STARTED, FRAME_INFO_COMPLETE, STREAM_RESULTS_COMPLETE, COMPLETE};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        private State(String str, int i) {
        }

        static {
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public final void onFrameInfoComplete() {
        Object value;
        State state;
        AtomicRef atomicRef = this.state;
        do {
            value = atomicRef.getValue();
            State state2 = (State) value;
            int i = WhenMappings.$EnumSwitchMapping$0[state2.ordinal()];
            if (i == 1) {
                state = State.FRAME_INFO_COMPLETE;
            } else if (i == 3) {
                state = State.COMPLETE;
            } else {
                throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state2 + ' ');
            }
        } while (!atomicRef.compareAndSet(value, state));
        Iterator it = this.listenerStates.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        if (state == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    /* JADX INFO: renamed from: onStreamResultComplete-aKI5c8E, reason: not valid java name */
    public final void m1940onStreamResultCompleteaKI5c8E(int i) {
        Object value;
        State state;
        if (this.remainingStreamCount.decrementAndGet() != 0) {
            return;
        }
        AtomicRef atomicRef = this.state;
        do {
            value = atomicRef.getValue();
            State state2 = (State) value;
            int i2 = WhenMappings.$EnumSwitchMapping$0[state2.ordinal()];
            if (i2 == 1) {
                state = State.STREAM_RESULTS_COMPLETE;
            } else if (i2 == 2) {
                state = State.COMPLETE;
            } else {
                throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state2 + ' ');
            }
        } while (!atomicRef.compareAndSet(value, state));
        Iterator it = this.listenerStates.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        if (state == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    private final void invokeOnFrameComplete() {
        Iterator it = this.listenerStates.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
    }

    public String toString() {
        return "Frame-" + ((Object) FrameId.m1639toStringimpl(this.frameId)) + '(' + this.frameNumber + '@' + this.frameTimestamp + ')';
    }

    public static abstract class FrameOutput {
        private final AtomicInt count = AtomicFU.atomic(1);
        private final CompletableDeferred internalResult = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

        protected abstract void release();

        protected final CompletableDeferred getInternalResult() {
            return this.internalResult;
        }

        public final void decrement() {
            if (this.count.decrementAndGet() == 0) {
                OutputResult.Companion companion = OutputResult.Companion;
                this.internalResult.complete(OutputResult.m1954boximpl(OutputResult.m1955constructorimpl(OutputStatus.m1672boximpl(OutputStatus.Companion.m1682getUNAVAILABLEU7r42EA()))));
                release();
            }
        }
    }

    public final class FrameInfoOutput extends FrameOutput implements OutputDistributor.OutputListener {
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        protected void release() {
        }

        public FrameInfoOutput() {
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk, reason: not valid java name */
        public void mo1943onOutputComplete3ejhThk(long j, long j2, long j3, long j4, Object obj) {
            getInternalResult().complete(OutputResult.m1954boximpl(obj));
            FrameState.this.onFrameInfoComplete();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: nextFrameId-OMxQvVY, reason: not valid java name */
        public final long m1942nextFrameIdOMxQvVY() {
            return FrameId.m1638constructorimpl(FrameState.frameIds.incrementAndGet());
        }
    }
}
