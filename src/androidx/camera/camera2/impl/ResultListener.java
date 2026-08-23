package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.Logger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B2\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R)\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/impl/ResultListener;", "Landroidx/camera/camera2/pipe/Request$Listener;", "timeLimitNs", _UrlKt.FRAGMENT_ENCODE_SET, "checker", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/FrameInfo;", "Lkotlin/ParameterName;", "name", "totalCaptureResult", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(JLkotlin/jvm/functions/Function1;)V", "completeSignal", "Lkotlinx/coroutines/CompletableDeferred;", "result", "Lkotlinx/coroutines/Deferred;", "getResult", "()Lkotlinx/coroutines/Deferred;", "timestampOfFirstUpdateNs", "Ljava/lang/Long;", "onTotalCaptureResult", _UrlKt.FRAGMENT_ENCODE_SET, "requestMetadata", "Landroidx/camera/camera2/pipe/RequestMetadata;", "frameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "onTotalCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCapturePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/ResultListener\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,870:1\n85#2,4:871\n*S KotlinDebug\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/ResultListener\n*L\n857#1:871,4\n*E\n"})
public final class ResultListener implements Request.Listener {
    private final Function1<FrameInfo, Boolean> checker;
    private final CompletableDeferred<FrameInfo> completeSignal = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    private final long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    /* JADX WARN: Multi-variable type inference failed */
    public ResultListener(long j, Function1<? super FrameInfo, Boolean> function1) {
        this.timeLimitNs = j;
        this.checker = function1;
    }

    public final Deferred<FrameInfo> getResult() {
        return this.completeSignal;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo996onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo totalCaptureResult) {
        if (this.completeSignal.isCompleted() || this.completeSignal.isCancelled()) {
            return;
        }
        Long l = (Long) totalCaptureResult.getMetadata().get(CaptureResult.SENSOR_TIMESTAMP);
        if (l != null && this.timestampOfFirstUpdateNs == null) {
            this.timestampOfFirstUpdateNs = l;
        }
        Long l2 = this.timestampOfFirstUpdateNs;
        if (this.timeLimitNs != 0 && l2 != null && l != null && l.longValue() - l2.longValue() > this.timeLimitNs) {
            this.completeSignal.complete(null);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Wait for capture result timeout, current: " + l.longValue() + " first: " + l2.longValue());
                return;
            }
            return;
        }
        if (this.checker.invoke(totalCaptureResult).booleanValue()) {
            this.completeSignal.complete(totalCaptureResult);
        }
    }
}
