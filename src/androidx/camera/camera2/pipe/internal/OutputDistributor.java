package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraTimestamp;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.OutputResult;
import androidx.camera.camera2.pipe.media.Finalizer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00060\u0002j\u0002`\u0003:\u000278B'\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ3\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00112\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%¢\u0006\u0004\b&\u0010'J#\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u00112\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\u0014¢\u0006\u0004\b/\u00100J\"\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a022\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0003J,\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a022\u0006\u00104\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0011H\u0002J\b\u00106\u001a\u00020\u001fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148\u0002@\u0002X\u0083\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001d0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Landroidx/camera/camera2/pipe/internal/OutputDistributor;", "T", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "maximumCachedOutputs", _UrlKt.FRAGMENT_ENCODE_SET, "outputFinalizer", "Landroidx/camera/camera2/pipe/media/Finalizer;", "outputMatcher", "Landroidx/camera/camera2/pipe/internal/OutputMatcher;", "<init>", "(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;)V", "lock", _UrlKt.FRAGMENT_ENCODE_SET, "closed", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOutputSequenceNumbers", _UrlKt.FRAGMENT_ENCODE_SET, "newestCameraOutputNumber", "newestFrameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "J", "lastFailedFrameNumber", "lastFailedCameraOutputNumber", "startedOutputs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;", "availableOutputs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/internal/OutputResult;", "onOutputStarted", _UrlKt.FRAGMENT_ENCODE_SET, "cameraFrameNumber", "cameraTimestamp", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "cameraOutputNumber", "outputListener", "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "onOutputStarted-qGubWw0", "(JJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V", "onOutputResult", "outputNumber", "outputResult", "onOutputResult-DvZWqE8", "(JLjava/lang/Object;)V", "onOutputFailure", "frameNumber", "onOutputFailure-Vw7M1qk", "(J)V", "removeOutputsOlderThan", _UrlKt.FRAGMENT_ENCODE_SET, "output", "isOutOfOrder", "cameraOutputSequence", "close", "OutputListener", "StartedOutput", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOutputDistributor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputDistributor.kt\nandroidx/camera/camera2/pipe/internal/OutputDistributor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult\n+ 6 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n1#1,398:1\n295#2,2:399\n295#2,2:403\n295#2,2:406\n1869#2,2:408\n295#2,2:416\n1869#2,2:422\n669#2,11:424\n774#2:435\n865#2,2:436\n71#3,2:401\n1#4:405\n44#5,4:410\n44#5,4:418\n44#5,4:438\n68#6:414\n68#6:415\n*S KotlinDebug\n*F\n+ 1 OutputDistributor.kt\nandroidx/camera/camera2/pipe/internal/OutputDistributor\n*L\n133#1:399,2\n151#1:403,2\n179#1:406,2\n211#1:408,2\n260#1:416,2\n291#1:422,2\n304#1:424,11\n333#1:435\n333#1:436,2\n135#1:401,2\n212#1:410,4\n290#1:418,4\n359#1:438,4\n217#1:414\n219#1:415\n*E\n"})
public final class OutputDistributor<T> implements AutoCloseable {
    private final Map<Long, OutputResult<T>> availableOutputs;
    private long cameraOutputSequenceNumbers;
    private boolean closed;
    private long lastFailedCameraOutputNumber;
    private long lastFailedFrameNumber;
    private final Object lock;
    private final int maximumCachedOutputs;
    private long newestCameraOutputNumber;
    private long newestFrameNumber;
    private final Finalizer<T> outputFinalizer;
    private final OutputMatcher outputMatcher;
    private final List<StartedOutput<T>> startedOutputs;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rH&¢\u0006\u0004\b\u000e\u0010\u000fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0010À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "onOutputComplete", _UrlKt.FRAGMENT_ENCODE_SET, "cameraFrameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "cameraTimestamp", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "cameraOutputSequence", _UrlKt.FRAGMENT_ENCODE_SET, "outputNumber", "outputResult", "Landroidx/camera/camera2/pipe/internal/OutputResult;", "onOutputComplete-3ejhThk", "(JJJJLjava/lang/Object;)V", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OutputListener<T> {
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk */
        void mo1630onOutputComplete3ejhThk(long cameraFrameNumber, long cameraTimestamp, long cameraOutputSequence, long outputNumber, Object outputResult);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OutputDistributor(int i, Finalizer<? super T> finalizer, OutputMatcher outputMatcher) {
        this.maximumCachedOutputs = i;
        this.outputFinalizer = finalizer;
        this.outputMatcher = outputMatcher;
        this.lock = new Object();
        this.cameraOutputSequenceNumbers = 1L;
        this.newestCameraOutputNumber = Long.MIN_VALUE;
        this.newestFrameNumber = FrameNumber.m1339constructorimpl(Long.MIN_VALUE);
        this.lastFailedFrameNumber = Long.MIN_VALUE;
        this.lastFailedCameraOutputNumber = Long.MIN_VALUE;
        this.startedOutputs = new ArrayList();
        this.availableOutputs = new LinkedHashMap();
    }

    public /* synthetic */ OutputDistributor(int i, Finalizer finalizer, OutputMatcher outputMatcher, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 3 : i, finalizer, outputMatcher);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0190  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX INFO: renamed from: onOutputStarted-qGubWw0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1636onOutputStartedqGubWw0(long cameraFrameNumber, long cameraTimestamp, long cameraOutputNumber, OutputListener<T> outputListener) {
        T next;
        OutputDistributor<T> outputDistributor;
        boolean z;
        T next2;
        Long l;
        List<StartedOutput<T>> listRemoveOutputsOlderThan;
        boolean z2;
        OutputResult<T> outputResultRemove;
        OutputResult outputResult;
        Object objM1642constructorimpl;
        T next3;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (this.lock) {
            try {
                Iterator<T> it = this.startedOutputs.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = (T) null;
                        break;
                    } else {
                        next = it.next();
                        if (FrameNumber.m1341equalsimpl0(((StartedOutput) next).getCameraFrameNumber(), cameraFrameNumber)) {
                            break;
                        }
                    }
                }
                StartedOutput startedOutput = next;
                if (startedOutput != null) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "onOutputStarted was invoked multiple times with a previously started output!onOutputStarted with " + ((Object) FrameNumber.m1343toStringimpl(cameraFrameNumber)) + ", " + ((Object) CameraTimestamp.m1316toStringimpl(cameraTimestamp)) + ", " + cameraOutputNumber + ". Previously started output: " + startedOutput + ". Ignoring.");
                    }
                    return;
                }
                boolean z3 = this.closed;
                long j = this.cameraOutputSequenceNumbers;
                this.cameraOutputSequenceNumbers = 1 + j;
                if (z3 || this.lastFailedFrameNumber == cameraFrameNumber || this.lastFailedCameraOutputNumber == cameraOutputNumber) {
                    outputDistributor = this;
                    z = z3;
                    Iterator<T> it2 = outputDistributor.availableOutputs.keySet().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next2 = (T) null;
                            break;
                        } else {
                            next2 = it2.next();
                            if (outputDistributor.outputMatcher.fuzzyEqual(cameraOutputNumber, ((Number) next2).longValue())) {
                                break;
                            }
                        }
                    }
                    Long l2 = next2;
                    objectRef.element = l2 != null ? (T) outputDistributor.availableOutputs.remove(l2) : null;
                    l = l2;
                    listRemoveOutputsOlderThan = null;
                    z2 = true;
                } else {
                    boolean z4 = cameraFrameNumber < this.newestFrameNumber;
                    if (!z4) {
                        this.newestFrameNumber = cameraFrameNumber;
                    }
                    boolean z5 = cameraOutputNumber < this.newestCameraOutputNumber;
                    if (!z5) {
                        this.newestCameraOutputNumber = cameraOutputNumber;
                    }
                    boolean z6 = z4 || z5;
                    Iterator<T> it3 = this.availableOutputs.keySet().iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            next3 = (T) null;
                            break;
                        } else {
                            next3 = it3.next();
                            if (this.outputMatcher.fuzzyEqual(cameraOutputNumber, ((Number) next3).longValue())) {
                                break;
                            }
                        }
                    }
                    Long l3 = next3;
                    if (l3 != null) {
                        outputResultRemove = this.availableOutputs.remove(l3);
                        listRemoveOutputsOlderThan = removeOutputsOlderThan(z6, j, cameraOutputNumber);
                        outputDistributor = this;
                        l = l3;
                        z = z3;
                        z2 = true;
                        Unit unit = Unit.INSTANCE;
                        if (listRemoveOutputsOlderThan != null) {
                            Iterator<T> it4 = listRemoveOutputsOlderThan.iterator();
                            while (it4.hasNext()) {
                                ((StartedOutput) it4.next()).m1638completeWithFailuretXNfJfc(OutputStatus.INSTANCE.m1377getERROR_OUTPUT_MISSINGU7r42EA());
                            }
                        }
                        outputResult = (OutputResult) objectRef.element;
                        if (outputResult != null) {
                            Object result = outputResult.getResult();
                            if (!OutputResult.m1644getAvailableimpl(result)) {
                                result = null;
                            }
                            if (result != null) {
                                outputDistributor.outputFinalizer.finalize((T) result);
                            }
                        }
                        if (z2) {
                            return;
                        }
                        if (z) {
                            OutputResult.Companion companion = OutputResult.INSTANCE;
                            objM1642constructorimpl = OutputResult.m1642constructorimpl(OutputStatus.m1368boximpl(OutputStatus.INSTANCE.m1375getERROR_OUTPUT_ABORTEDU7r42EA()));
                        } else {
                            OutputResult<T> outputResult2 = outputResultRemove;
                            if (outputResult2 != null) {
                                objM1642constructorimpl = outputResult2.getResult();
                            } else {
                                OutputResult.Companion companion2 = OutputResult.INSTANCE;
                                objM1642constructorimpl = OutputResult.m1642constructorimpl(OutputStatus.m1368boximpl(OutputStatus.INSTANCE.m1376getERROR_OUTPUT_FAILEDU7r42EA()));
                            }
                        }
                        outputListener.mo1630onOutputComplete3ejhThk(cameraFrameNumber, cameraTimestamp, j, l != null ? l.longValue() : -1L, objM1642constructorimpl);
                        return;
                    }
                    outputDistributor = this;
                    List<StartedOutput<T>> list = outputDistributor.startedOutputs;
                    z = z3;
                    StartedOutput<T> startedOutput2 = new StartedOutput<>(z6, cameraFrameNumber, cameraTimestamp, j, cameraOutputNumber, outputListener, null);
                    j = j;
                    list.add(startedOutput2);
                    z2 = false;
                    l = null;
                    listRemoveOutputsOlderThan = null;
                }
                outputResultRemove = null;
                Unit unit2 = Unit.INSTANCE;
                if (listRemoveOutputsOlderThan != null) {
                }
                outputResult = (OutputResult) objectRef.element;
                if (outputResult != null) {
                }
                if (z2) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: onOutputResult-DvZWqE8, reason: not valid java name */
    public final void m1635onOutputResultDvZWqE8(long outputNumber, Object outputResult) {
        OutputResult<T> outputResultM1641boximpl;
        List<StartedOutput<T>> listRemoveOutputsOlderThan;
        T next;
        synchronized (this.lock) {
            try {
                if (this.closed || this.outputMatcher.fuzzyEqual(this.lastFailedCameraOutputNumber, outputNumber)) {
                    outputResultM1641boximpl = OutputResult.m1641boximpl(outputResult);
                } else {
                    Iterator<T> it = this.startedOutputs.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = (T) null;
                            break;
                        } else {
                            next = it.next();
                            if (this.outputMatcher.fuzzyEqual(((StartedOutput) next).getCameraOutputNumber(), outputNumber)) {
                                break;
                            }
                        }
                    }
                    StartedOutput<T> startedOutput = next;
                    if (startedOutput != null) {
                        listRemoveOutputsOlderThan = removeOutputsOlderThan(startedOutput);
                        startedOutput.m1637completeWithDvZWqE8(outputNumber, outputResult);
                        this.startedOutputs.remove(startedOutput);
                        outputResultM1641boximpl = null;
                    } else {
                        this.availableOutputs.put(Long.valueOf(outputNumber), OutputResult.m1641boximpl(outputResult));
                        if (this.availableOutputs.size() > this.maximumCachedOutputs) {
                            outputResultM1641boximpl = this.availableOutputs.remove(Long.valueOf(((Number) CollectionsKt.first(this.availableOutputs.keySet())).longValue()));
                        } else {
                            outputResultM1641boximpl = null;
                            listRemoveOutputsOlderThan = null;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
                listRemoveOutputsOlderThan = null;
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        OutputResult<T> outputResult2 = outputResultM1641boximpl;
        if (outputResult2 != null) {
            Object result = outputResult2.getResult();
            Object obj = OutputResult.m1644getAvailableimpl(result) ? result : null;
            if (obj != null) {
                this.outputFinalizer.finalize((T) obj);
            }
        }
        if (listRemoveOutputsOlderThan != null) {
            Iterator<T> it2 = listRemoveOutputsOlderThan.iterator();
            while (it2.hasNext()) {
                ((StartedOutput) it2.next()).m1638completeWithFailuretXNfJfc(OutputStatus.INSTANCE.m1377getERROR_OUTPUT_MISSINGU7r42EA());
            }
        }
    }

    /* JADX INFO: renamed from: onOutputFailure-Vw7M1qk, reason: not valid java name */
    public final void m1634onOutputFailureVw7M1qk(long frameNumber) {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.lastFailedFrameNumber = frameNumber;
                Iterator<T> it = this.startedOutputs.iterator();
                StartedOutput startedOutput = null;
                boolean z = false;
                StartedOutput startedOutput2 = null;
                while (true) {
                    if (it.hasNext()) {
                        T next = it.next();
                        if (FrameNumber.m1341equalsimpl0(((StartedOutput) next).getCameraFrameNumber(), frameNumber)) {
                            if (z) {
                                break;
                            }
                            z = true;
                            startedOutput2 = next;
                        }
                    } else if (!z) {
                    }
                }
                startedOutput2 = null;
                StartedOutput startedOutput3 = startedOutput2;
                if (startedOutput3 != null) {
                    this.lastFailedCameraOutputNumber = startedOutput3.getCameraOutputNumber();
                    this.startedOutputs.remove(startedOutput3);
                    Unit unit = Unit.INSTANCE;
                    startedOutput = startedOutput3;
                }
                if (startedOutput != null) {
                    startedOutput.m1638completeWithFailuretXNfJfc(OutputStatus.INSTANCE.m1376getERROR_OUTPUT_FAILEDU7r42EA());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final List<StartedOutput<T>> removeOutputsOlderThan(StartedOutput<T> output) {
        return removeOutputsOlderThan(output.getIsOutOfOrder(), output.getCameraOutputSequence(), output.getCameraOutputNumber());
    }

    private final List<StartedOutput<T>> removeOutputsOlderThan(boolean isOutOfOrder, long cameraOutputSequence, long cameraOutputNumber) {
        List<StartedOutput<T>> list = this.startedOutputs;
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            StartedOutput startedOutput = (StartedOutput) t;
            if (startedOutput.getIsOutOfOrder() == isOutOfOrder && startedOutput.getCameraOutputSequence() < cameraOutputSequence && startedOutput.getCameraOutputNumber() < cameraOutputNumber) {
                arrayList.add(t);
            }
        }
        this.startedOutputs.removeAll(arrayList);
        return arrayList;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            List mutableList = CollectionsKt.toMutableList((Collection) this.availableOutputs.values());
            this.availableOutputs.clear();
            List mutableList2 = CollectionsKt.toMutableList((Collection) this.startedOutputs);
            this.startedOutputs.clear();
            Unit unit = Unit.INSTANCE;
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                Object result = ((OutputResult) it.next()).getResult();
                Finalizer<T> finalizer = this.outputFinalizer;
                if (!OutputResult.m1644getAvailableimpl(result)) {
                    result = null;
                }
                finalizer.finalize((T) result);
            }
            Iterator it2 = mutableList2.iterator();
            while (it2.hasNext()) {
                ((StartedOutput) it2.next()).m1638completeWithFailuretXNfJfc(OutputStatus.INSTANCE.m1375getERROR_OUTPUT_ABORTEDU7r42EA());
            }
        }
    }

    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B=\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001d\u001a\u00020\u001cHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010 \u001a\u00020\u001fHÖ\u0001¢\u0006\u0004\b \u0010!J\u001a\u0010#\u001a\u00020\u00032\b\u0010\"\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b#\u0010$R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010%\u001a\u0004\b\u0004\u0010&R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010'\u001a\u0004\b*\u0010)R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010'\u001a\u0004\b+\u0010)R\u0017\u0010\u000b\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010'\u001a\u0004\b,\u0010)R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010-R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00061"}, d2 = {"Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;", "T", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isOutOfOrder", "Landroidx/camera/camera2/pipe/FrameNumber;", "cameraFrameNumber", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "cameraTimestamp", _UrlKt.FRAGMENT_ENCODE_SET, "cameraOutputSequence", "cameraOutputNumber", "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "outputListener", "<init>", "(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/camera/camera2/pipe/OutputStatus;", "failureReason", _UrlKt.FRAGMENT_ENCODE_SET, "completeWithFailure-tXNfJfc", "(I)V", "completeWithFailure", "outputNumber", "Landroidx/camera/camera2/pipe/internal/OutputResult;", "outputResult", "completeWith-DvZWqE8", "(JLjava/lang/Object;)V", "completeWith", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "()Z", "J", "getCameraFrameNumber-Ugla2oM", "()J", "getCameraTimestamp-LS1Wq50", "getCameraOutputSequence", "getCameraOutputNumber", "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;", "Lkotlinx/atomicfu/AtomicBoolean;", "complete", "Lkotlinx/atomicfu/AtomicBoolean;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOutputDistributor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputDistributor.kt\nandroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput\n+ 2 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n1#1,398:1\n68#2:399\n*S KotlinDebug\n*F\n+ 1 OutputDistributor.kt\nandroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput\n*L\n381#1:399\n*E\n"})
    public static final /* data */ class StartedOutput<T> {
        private final long cameraFrameNumber;
        private final long cameraOutputNumber;
        private final long cameraOutputSequence;
        private final long cameraTimestamp;
        private final AtomicBoolean complete;
        private final boolean isOutOfOrder;
        private final OutputListener<T> outputListener;

        public /* synthetic */ StartedOutput(boolean z, long j, long j2, long j3, long j4, OutputListener outputListener, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, j, j2, j3, j4, outputListener);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StartedOutput)) {
                return false;
            }
            StartedOutput startedOutput = (StartedOutput) other;
            return this.isOutOfOrder == startedOutput.isOutOfOrder && FrameNumber.m1341equalsimpl0(this.cameraFrameNumber, startedOutput.cameraFrameNumber) && CameraTimestamp.m1314equalsimpl0(this.cameraTimestamp, startedOutput.cameraTimestamp) && this.cameraOutputSequence == startedOutput.cameraOutputSequence && this.cameraOutputNumber == startedOutput.cameraOutputNumber && Intrinsics.areEqual(this.outputListener, startedOutput.outputListener);
        }

        public int hashCode() {
            return (((((((((Boolean.hashCode(this.isOutOfOrder) * 31) + FrameNumber.m1342hashCodeimpl(this.cameraFrameNumber)) * 31) + CameraTimestamp.m1315hashCodeimpl(this.cameraTimestamp)) * 31) + Long.hashCode(this.cameraOutputSequence)) * 31) + Long.hashCode(this.cameraOutputNumber)) * 31) + this.outputListener.hashCode();
        }

        public String toString() {
            return "StartedOutput(isOutOfOrder=" + this.isOutOfOrder + ", cameraFrameNumber=" + ((Object) FrameNumber.m1343toStringimpl(this.cameraFrameNumber)) + ", cameraTimestamp=" + ((Object) CameraTimestamp.m1316toStringimpl(this.cameraTimestamp)) + ", cameraOutputSequence=" + this.cameraOutputSequence + ", cameraOutputNumber=" + this.cameraOutputNumber + ", outputListener=" + this.outputListener + ')';
        }

        private StartedOutput(boolean z, long j, long j2, long j3, long j4, OutputListener<T> outputListener) {
            this.isOutOfOrder = z;
            this.cameraFrameNumber = j;
            this.cameraTimestamp = j2;
            this.cameraOutputSequence = j3;
            this.cameraOutputNumber = j4;
            this.outputListener = outputListener;
            this.complete = AtomicFU.atomic(false);
        }

        /* JADX INFO: renamed from: isOutOfOrder, reason: from getter */
        public final boolean getIsOutOfOrder() {
            return this.isOutOfOrder;
        }

        /* JADX INFO: renamed from: getCameraFrameNumber-Ugla2oM, reason: not valid java name and from getter */
        public final long getCameraFrameNumber() {
            return this.cameraFrameNumber;
        }

        public final long getCameraOutputSequence() {
            return this.cameraOutputSequence;
        }

        public final long getCameraOutputNumber() {
            return this.cameraOutputNumber;
        }

        /* JADX INFO: renamed from: completeWithFailure-tXNfJfc, reason: not valid java name */
        public final void m1638completeWithFailuretXNfJfc(int failureReason) {
            OutputResult.Companion companion = OutputResult.INSTANCE;
            m1637completeWithDvZWqE8(-1L, OutputResult.m1642constructorimpl(OutputStatus.m1368boximpl(failureReason)));
        }

        /* JADX INFO: renamed from: completeWith-DvZWqE8, reason: not valid java name */
        public final void m1637completeWithDvZWqE8(long outputNumber, Object outputResult) {
            if (!this.complete.compareAndSet(false, true)) {
                throw new IllegalStateException(("Output " + this.cameraOutputSequence + " at " + ((Object) FrameNumber.m1343toStringimpl(this.cameraFrameNumber)) + " for " + outputNumber + " was completed multiple times!").toString());
            }
            this.outputListener.mo1630onOutputComplete3ejhThk(this.cameraFrameNumber, this.cameraTimestamp, this.cameraOutputSequence, outputNumber, outputResult);
        }
    }
}
