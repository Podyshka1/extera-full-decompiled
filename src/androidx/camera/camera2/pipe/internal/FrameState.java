package androidx.camera.camera2.pipe.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.FrameId;
import androidx.camera.camera2.pipe.FrameInfo;
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
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BuildConfig;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 82\u00020\u0001:\u00059:;<8B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u000fJ\u0015\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001f\u0010\u001eR\u0017\u0010!\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001eR\u001b\u0010$\u001a\u00060#R\u00020\u00008\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R!\u0010*\u001a\f\u0012\b\u0012\u00060)R\u00020\u00000(8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001a\u00100\u001a\b\u0012\u0004\u0012\u00020/0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020\u0001058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006="}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/RequestMetadata;", "requestMetadata", "Landroidx/camera/camera2/pipe/FrameNumber;", "frameNumber", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "frameTimestamp", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream;", "imageStreams", "<init>", "(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "invokeOnFrameComplete", "()V", "onFrameInfoComplete", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "onStreamResultComplete-aKI5c8E", "(I)V", "onStreamResultComplete", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/RequestMetadata;", "getRequestMetadata", "()Landroidx/camera/camera2/pipe/RequestMetadata;", "J", "getFrameNumber-Ugla2oM", "()J", "getFrameTimestamp-LS1Wq50", "Landroidx/camera/camera2/pipe/FrameId;", "frameId", "getFrameId-OMxQvVY", "Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;", "frameInfoOutput", "Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;", "getFrameInfoOutput", "()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;", "imageOutputs", "Ljava/util/List;", "getImageOutputs", "()Ljava/util/List;", "Lkotlinx/atomicfu/AtomicRef;", "Landroidx/camera/camera2/pipe/internal/FrameState$State;", "state", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/atomicfu/AtomicInt;", "remainingStreamCount", "Lkotlinx/atomicfu/AtomicInt;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "listenerStates", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Companion", "State", "FrameOutput", "FrameInfoOutput", "ImageOutput", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFrameState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,288:1\n1#2:289\n1563#3:290\n1634#3,3:291\n186#4,4:294\n186#4,4:298\n*S KotlinDebug\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState\n*L\n88#1:290\n88#1:291,3\n113#1:294,4\n138#1:298,4\n*E\n"})
public final class FrameState {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicLong frameIds = AtomicFU.atomic(0L);
    private final long frameId;
    private final FrameInfoOutput frameInfoOutput;
    private final long frameNumber;
    private final long frameTimestamp;
    private final List<ImageOutput> imageOutputs;
    private final CopyOnWriteArrayList<Object> listenerStates;
    private final AtomicInt remainingStreamCount;
    private final RequestMetadata requestMetadata;
    private final AtomicRef<State> state;

    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00040\u0003B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ=\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001f\u0010\u001eR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010 ¨\u0006!"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;", "Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;", "Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "Landroidx/camera/camera2/pipe/media/OutputImage;", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "Landroidx/camera/camera2/pipe/OutputId;", "outputId", "Lkotlinx/atomicfu/AtomicInt;", "remainingOutputResults", "<init>", "(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/camera/camera2/pipe/FrameNumber;", "cameraFrameNumber", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "cameraTimestamp", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOutputSequence", "outputNumber", "Landroidx/camera/camera2/pipe/internal/OutputResult;", "outputResult", _UrlKt.FRAGMENT_ENCODE_SET, "onOutputComplete-3ejhThk", "(JJJJLjava/lang/Object;)V", "onOutputComplete", BuildConfig.BUILD_TYPE, "()V", "I", "getStreamId-ptHMqGs", "()I", "getOutputId-4LaLFng", "Lkotlinx/atomicfu/AtomicInt;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFrameState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$ImageOutput\n+ 2 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult\n+ 3 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n1#1,288:1\n44#2,4:289\n55#2,5:295\n44#2,4:304\n44#2,4:309\n44#2,4:315\n72#3:293\n64#3:294\n79#3:300\n68#3:301\n103#3,2:302\n106#3:308\n103#3,2:313\n106#3:319\n*S KotlinDebug\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$ImageOutput\n*L\n254#1:289,4\n261#1:295,5\n273#1:304,4\n275#1:309,4\n278#1:315,4\n257#1:293\n257#1:294\n261#1:300\n261#1:301\n273#1:302,2\n273#1:308\n278#1:313,2\n278#1:319\n*E\n"})
    public final class ImageOutput extends FrameOutput<SharedOutputImage> implements OutputDistributor.OutputListener<OutputImage> {
        private final int outputId;
        private final AtomicInt remainingOutputResults;
        private final int streamId;

        public /* synthetic */ ImageOutput(FrameState frameState, int i, int i2, AtomicInt atomicInt, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, atomicInt);
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk */
        public void mo1683onOutputComplete3ejhThk(long cameraFrameNumber, long cameraTimestamp, long cameraOutputSequence, long outputNumber, Object outputResult) throws Exception {
            int value;
            OutputImage outputImage = (OutputImage) (OutputResult.m1697getAvailableimpl(outputResult) ? outputResult : null);
            if (outputImage != null) {
                SharedOutputImage sharedOutputImageFrom = SharedOutputImage.INSTANCE.from(outputImage);
                if (!getInternalResult().complete(OutputResult.m1694boximpl(OutputResult.m1695constructorimpl(sharedOutputImageFrom)))) {
                    UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(sharedOutputImageFrom);
                }
            } else {
                CompletableDeferred<OutputResult<SharedOutputImage>> internalResult = getInternalResult();
                if (OutputResult.m1697getAvailableimpl(outputResult)) {
                    value = OutputStatus.INSTANCE.m1427getAVAILABLEU7r42EA();
                } else if (outputResult == null) {
                    value = OutputStatus.INSTANCE.m1431getUNAVAILABLEU7r42EA();
                } else {
                    value = ((OutputStatus) outputResult).getValue();
                }
                internalResult.complete(OutputResult.m1694boximpl(OutputResult.m1695constructorimpl(OutputStatus.m1421boximpl(value))));
            }
            if (this.remainingOutputResults.decrementAndGet() == 0) {
                Iterator it = FrameState.this.listenerStates.iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                }
                FrameState.this.m1680onStreamResultCompleteaKI5c8E(this.streamId);
            }
        }

        private ImageOutput(int i, int i2, AtomicInt atomicInt) {
            this.streamId = i;
            this.outputId = i2;
            this.remainingOutputResults = atomicInt;
        }

        /* JADX INFO: renamed from: getStreamId-ptHMqGs, reason: not valid java name and from getter */
        public final int getStreamId() {
            return this.streamId;
        }

        /* JADX INFO: renamed from: getOutputId-4LaLFng, reason: not valid java name and from getter */
        public final int getOutputId() {
            return this.outputId;
        }

        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public void release() throws Exception {
            OutputResult.Companion companion = OutputResult.INSTANCE;
            CompletableDeferred<OutputResult<SharedOutputImage>> internalResult = getInternalResult();
            Object obj = null;
            if (internalResult.isCompleted() && !internalResult.isCancelled()) {
                Object result = internalResult.getCompleted().getResult();
                if (OutputResult.m1697getAvailableimpl(result)) {
                    obj = result;
                }
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) obj;
            if (sharedOutputImage != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(sharedOutputImage);
            }
        }
    }

    private FrameState(RequestMetadata requestMetadata, long j, long j2, Set<CameraStream> set) {
        Object next;
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.frameTimestamp = j2;
        this.frameId = INSTANCE.m1682nextFrameIdOMxQvVY();
        this.frameInfoOutput = new FrameInfoOutput();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator<StreamId> it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            int value = it.next().getValue();
            Iterator<T> it2 = set.iterator();
            while (true) {
                if (it2.hasNext()) {
                    next = it2.next();
                    if (StreamId.m1528equalsimpl0(((CameraStream) next).getId(), value)) {
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            CameraStream cameraStream = (CameraStream) next;
            if (cameraStream != null) {
                List<OutputStream> outputs = cameraStream.getOutputs();
                AtomicInt atomicIntAtomic = AtomicFU.atomic(outputs.size());
                int size = outputs.size();
                for (int i = 0; i < size; i++) {
                    listCreateListBuilder.add(new ImageOutput(this, value, outputs.get(i).getId(), atomicIntAtomic, null));
                }
            }
        }
        List<ImageOutput> listBuild = CollectionsKt.build(listCreateListBuilder);
        this.imageOutputs = listBuild;
        this.state = AtomicFU.atomic(State.STARTED);
        List<ImageOutput> list = listBuild;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList.add(StreamId.m1525boximpl(((ImageOutput) it3.next()).getStreamId()));
        }
        this.remainingStreamCount = AtomicFU.atomic(CollectionsKt.distinct(arrayList).size());
        this.listenerStates = new CopyOnWriteArrayList<>();
    }

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name and from getter */
    public final long getFrameNumber() {
        return this.frameNumber;
    }

    public final FrameInfoOutput getFrameInfoOutput() {
        return this.frameInfoOutput;
    }

    public final List<ImageOutput> getImageOutputs() {
        return this.imageOutputs;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState$State;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "STARTED", "FRAME_INFO_COMPLETE", "STREAM_RESULTS_COMPLETE", "COMPLETE", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
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
        State value;
        State state;
        AtomicRef<State> atomicRef = this.state;
        do {
            value = atomicRef.getValue();
            State state2 = value;
            int i = WhenMappings.$EnumSwitchMapping$0[state2.ordinal()];
            if (i == 1) {
                state = State.FRAME_INFO_COMPLETE;
            } else if (i == 3) {
                state = State.COMPLETE;
            } else {
                throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state2 + ' ');
            }
        } while (!atomicRef.compareAndSet(value, state));
        Iterator<Object> it = this.listenerStates.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        if (state == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    /* JADX INFO: renamed from: onStreamResultComplete-aKI5c8E, reason: not valid java name */
    public final void m1680onStreamResultCompleteaKI5c8E(int streamId) {
        State value;
        State state;
        if (this.remainingStreamCount.decrementAndGet() != 0) {
            return;
        }
        AtomicRef<State> atomicRef = this.state;
        do {
            value = atomicRef.getValue();
            State state2 = value;
            int i = WhenMappings.$EnumSwitchMapping$0[state2.ordinal()];
            if (i == 1) {
                state = State.STREAM_RESULTS_COMPLETE;
            } else if (i == 2) {
                state = State.COMPLETE;
            } else {
                throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state2 + ' ');
            }
        } while (!atomicRef.compareAndSet(value, state));
        Iterator<Object> it = this.listenerStates.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        if (state == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    private final void invokeOnFrameComplete() {
        Iterator<Object> it = this.listenerStates.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }

    public String toString() {
        return "Frame-" + ((Object) FrameId.m1388toStringimpl(this.frameId)) + '(' + this.frameNumber + '@' + this.frameTimestamp + ')';
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H$¢\u0006\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR&\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000b8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;", _UrlKt.FRAGMENT_ENCODE_SET, "T", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "decrement", BuildConfig.BUILD_TYPE, "Lkotlinx/atomicfu/AtomicInt;", NotificationBadge.NewHtcHomeBadger.COUNT, "Lkotlinx/atomicfu/AtomicInt;", "Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/camera/camera2/pipe/internal/OutputResult;", "internalResult", "Lkotlinx/coroutines/CompletableDeferred;", "getInternalResult", "()Lkotlinx/coroutines/CompletableDeferred;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFrameState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$FrameOutput\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n+ 4 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult\n*L\n1#1,288:1\n382#2,4:289\n79#3:293\n68#3:294\n87#3,11:295\n55#4,5:306\n*S KotlinDebug\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$FrameOutput\n*L\n183#1:289,4\n197#1:293\n197#1:294\n209#1:295,11\n209#1:306,5\n*E\n"})
    public static abstract class FrameOutput<T> {
        private final AtomicInt count = AtomicFU.atomic(1);
        private final CompletableDeferred<OutputResult<T>> internalResult = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

        public abstract void release();

        public final CompletableDeferred<OutputResult<T>> getInternalResult() {
            return this.internalResult;
        }

        public final void decrement() {
            if (this.count.decrementAndGet() == 0) {
                OutputResult.Companion companion = OutputResult.INSTANCE;
                this.internalResult.complete(OutputResult.m1694boximpl(OutputResult.m1695constructorimpl(OutputStatus.m1421boximpl(OutputStatus.INSTANCE.m1431getUNAVAILABLEU7r42EA()))));
                release();
            }
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J=\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;", "Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;", "Landroidx/camera/camera2/pipe/FrameInfo;", "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "<init>", "(Landroidx/camera/camera2/pipe/internal/FrameState;)V", "Landroidx/camera/camera2/pipe/FrameNumber;", "cameraFrameNumber", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "cameraTimestamp", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOutputSequence", "outputNumber", "Landroidx/camera/camera2/pipe/internal/OutputResult;", "outputResult", _UrlKt.FRAGMENT_ENCODE_SET, "onOutputComplete-3ejhThk", "(JJJJLjava/lang/Object;)V", "onOutputComplete", BuildConfig.BUILD_TYPE, "()V", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFrameState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput\n+ 2 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult\n+ 3 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n1#1,288:1\n44#2,4:289\n44#2,4:295\n103#3,2:293\n106#3:299\n*S KotlinDebug\n*F\n+ 1 FrameState.kt\nandroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput\n*L\n233#1:289,4\n235#1:295,4\n235#1:293,2\n235#1:299\n*E\n"})
    public final class FrameInfoOutput extends FrameOutput<FrameInfo> implements OutputDistributor.OutputListener<FrameInfo> {
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public void release() {
        }

        public FrameInfoOutput() {
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk, reason: not valid java name */
        public void mo1683onOutputComplete3ejhThk(long cameraFrameNumber, long cameraTimestamp, long cameraOutputSequence, long outputNumber, Object outputResult) {
            getInternalResult().complete(OutputResult.m1694boximpl(outputResult));
            FrameState.this.onFrameInfoComplete();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/camera/camera2/pipe/internal/FrameState$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "frameIds", "Lkotlinx/atomicfu/AtomicLong;", "nextFrameId", "Landroidx/camera/camera2/pipe/FrameId;", "nextFrameId-OMxQvVY", "()J", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: nextFrameId-OMxQvVY, reason: not valid java name */
        public final long m1682nextFrameIdOMxQvVY() {
            return FrameId.m1387constructorimpl(FrameState.frameIds.incrementAndGet());
        }
    }
}
