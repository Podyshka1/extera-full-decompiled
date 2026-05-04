package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.Result3A;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class Result3AStateListenerImpl implements Result3AStateListener {
    private final CompletableDeferred _result;
    private final Function1 exitCondition;
    private final Integer frameLimit;
    private volatile FrameNumber frameNumberOfFirstUpdate;
    private RequestNumber initialRequestNumber;
    private final Long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    public Result3AStateListenerImpl(Function1 exitCondition, Integer num, Long l) {
        Intrinsics.checkNotNullParameter(exitCondition, "exitCondition");
        this.exitCondition = exitCondition;
        this.frameLimit = num;
        this.timeLimitNs = l;
        this._result = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    public /* synthetic */ Result3AStateListenerImpl(Function1 function1, Integer num, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    public /* synthetic */ Result3AStateListenerImpl(Map map, Integer num, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Result3AStateListenerImpl(Map exitConditionForKeys, Integer num, Long l) {
        this(Result3AStateListenerKt.toConditionChecker(exitConditionForKeys), num, l);
        Intrinsics.checkNotNullParameter(exitConditionForKeys, "exitConditionForKeys");
    }

    public final Deferred getResult() {
        return this._result;
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: onRequestSequenceCreated-DThHKJ0 */
    public void mo1914onRequestSequenceCreatedDThHKJ0(long j) {
        synchronized (this) {
            try {
                if (this.initialRequestNumber == null) {
                    this.initialRequestNumber = RequestNumber.m1747boximpl(j);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: update-voP-kFw */
    public boolean mo1915updatevoPkFw(long j, FrameMetadata frameMetadata) {
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        if (this._result.isCompleted() || this._result.isCancelled()) {
            return true;
        }
        synchronized (this) {
            RequestNumber requestNumber = this.initialRequestNumber;
            if (requestNumber != null && j >= requestNumber.m1752unboximpl()) {
                Unit unit = Unit.INSTANCE;
                CaptureResult.Key SENSOR_TIMESTAMP = CaptureResult.SENSOR_TIMESTAMP;
                Intrinsics.checkNotNullExpressionValue(SENSOR_TIMESTAMP, "SENSOR_TIMESTAMP");
                Long l = (Long) frameMetadata.get(SENSOR_TIMESTAMP);
                long jMo1641getFrameNumberUgla2oM = frameMetadata.mo1641getFrameNumberUgla2oM();
                if (l != null && this.timestampOfFirstUpdateNs == null) {
                    this.timestampOfFirstUpdateNs = l;
                }
                Long l2 = this.timestampOfFirstUpdateNs;
                if (this.timeLimitNs != null && l2 != null && l != null && l.longValue() - l2.longValue() > this.timeLimitNs.longValue()) {
                    this._result.complete(new Result3A(Result3A.Status.Companion.m1770getTIME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (this.frameNumberOfFirstUpdate == null) {
                    this.frameNumberOfFirstUpdate = FrameNumber.m1642boximpl(jMo1641getFrameNumberUgla2oM);
                }
                FrameNumber frameNumber = this.frameNumberOfFirstUpdate;
                if (frameNumber != null && this.frameLimit != null && jMo1641getFrameNumberUgla2oM - frameNumber.m1648unboximpl() > this.frameLimit.intValue()) {
                    this._result.complete(new Result3A(Result3A.Status.Companion.m1766getFRAME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (!((Boolean) this.exitCondition.invoke(frameMetadata)).booleanValue()) {
                    return false;
                }
                this._result.complete(new Result3A(Result3A.Status.Companion.m1767getOKJvTi9ms(), frameMetadata, null));
                return true;
            }
            return false;
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        this._result.complete(new Result3A(Result3A.Status.Companion.m1768getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        this._result.complete(new Result3A(Result3A.Status.Companion.m1768getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        this._result.complete(new Result3A(Result3A.Status.Companion.m1768getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }
}
