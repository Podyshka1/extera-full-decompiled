package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.Result3A;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B3\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bB?\b\u0010\u0012\u001c\u0010\f\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\r\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u0011J\u0017\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001fH\u0016¢\u0006\u0004\b#\u0010$J\u001f\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b'\u0010(J\b\u0010)\u001a\u00020!H\u0016J\b\u0010*\u001a\u00020!H\u0016J\b\u0010+\u001a\u00020!H\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;", "Landroidx/camera/camera2/pipe/graph/Result3AStateListener;", "exitCondition", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "frameLimit", _UrlKt.FRAGMENT_ENCODE_SET, "timeLimitNs", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V", "exitConditionForKeys", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureResult$Key;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;)V", "Ljava/lang/Integer;", "Ljava/lang/Long;", "_result", "Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/camera/camera2/pipe/Result3A;", "result", "Lkotlinx/coroutines/Deferred;", "getResult", "()Lkotlinx/coroutines/Deferred;", "frameNumberOfFirstUpdate", "Landroidx/camera/camera2/pipe/FrameNumber;", "timestampOfFirstUpdateNs", "initialRequestNumber", "Landroidx/camera/camera2/pipe/RequestNumber;", "onRequestSequenceCreated", _UrlKt.FRAGMENT_ENCODE_SET, "requestNumber", "onRequestSequenceCreated-DThHKJ0", "(J)V", PluginsConstants.UPDATE, "frameMetadata", "update-voP-kFw", "(JLandroidx/camera/camera2/pipe/FrameMetadata;)Z", "onStopRepeating", "onGraphStopped", "onGraphShutdown", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class Result3AStateListenerImpl implements Result3AStateListener {
    private final CompletableDeferred<Result3A> _result;
    private final Function1<FrameMetadata, Boolean> exitCondition;
    private final Integer frameLimit;
    private volatile FrameNumber frameNumberOfFirstUpdate;
    private RequestNumber initialRequestNumber;
    private final Long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    /* JADX WARN: Multi-variable type inference failed */
    public Result3AStateListenerImpl(Function1<? super FrameMetadata, Boolean> function1, Integer num, Long l) {
        this.exitCondition = function1;
        this.frameLimit = num;
        this.timeLimitNs = l;
        this._result = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    public /* synthetic */ Result3AStateListenerImpl(Function1 function1, Integer num, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((Function1<? super FrameMetadata, Boolean>) function1, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    public /* synthetic */ Result3AStateListenerImpl(Map map, Integer num, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((Map<CaptureResult.Key<?>, ? extends List<? extends Object>>) map, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    public Result3AStateListenerImpl(Map<CaptureResult.Key<?>, ? extends List<? extends Object>> map, Integer num, Long l) {
        this(Result3AStateListenerKt.toConditionChecker(map), num, l);
    }

    public final Deferred<Result3A> getResult() {
        return this._result;
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: onRequestSequenceCreated-DThHKJ0 */
    public void mo1601onRequestSequenceCreatedDThHKJ0(long requestNumber) {
        synchronized (this) {
            try {
                if (this.initialRequestNumber == null) {
                    this.initialRequestNumber = RequestNumber.m1435boximpl(requestNumber);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: update-voP-kFw */
    public boolean mo1602updatevoPkFw(long requestNumber, FrameMetadata frameMetadata) {
        if (this._result.isCompleted() || this._result.isCancelled()) {
            return true;
        }
        synchronized (this) {
            RequestNumber requestNumber2 = this.initialRequestNumber;
            if (requestNumber2 != null && requestNumber >= requestNumber2.getValue()) {
                Unit unit = Unit.INSTANCE;
                Long l = (Long) frameMetadata.get(CaptureResult.SENSOR_TIMESTAMP);
                long jMo1337getFrameNumberUgla2oM = frameMetadata.mo1337getFrameNumberUgla2oM();
                if (l != null && this.timestampOfFirstUpdateNs == null) {
                    this.timestampOfFirstUpdateNs = l;
                }
                Long l2 = this.timestampOfFirstUpdateNs;
                if (this.timeLimitNs != null && l2 != null && l != null && l.longValue() - l2.longValue() > this.timeLimitNs.longValue()) {
                    this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1458getTIME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (this.frameNumberOfFirstUpdate == null) {
                    this.frameNumberOfFirstUpdate = FrameNumber.m1338boximpl(jMo1337getFrameNumberUgla2oM);
                }
                FrameNumber frameNumber = this.frameNumberOfFirstUpdate;
                if (frameNumber != null && this.frameLimit != null && jMo1337getFrameNumberUgla2oM - frameNumber.getValue() > this.frameLimit.intValue()) {
                    this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1454getFRAME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (!this.exitCondition.invoke(frameMetadata).booleanValue()) {
                    return false;
                }
                this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1455getOKJvTi9ms(), frameMetadata, null));
                return true;
            }
            return false;
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1456getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1456getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        this._result.complete(new Result3A(Result3A.Status.INSTANCE.m1456getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }
}
