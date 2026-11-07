package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.DurationNs;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0080\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\"\u001a\u0004\b#\u0010$R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010%\u001a\u0004\b&\u0010'R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010(\u001a\u0004\b)\u0010*R\u0019\u0010\f\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\f\u0010%\u001a\u0004\b+\u0010'R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\r\u0010%\u001a\u0004\b,\u0010'R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010%\u001a\u0004\b-\u0010'R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010.\u001a\u0004\b/\u00100¨\u00061"}, d2 = {"Landroidx/camera/camera2/pipe/compat/CameraStateClosed;", "Landroidx/camera/camera2/pipe/compat/CameraState;", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Landroidx/camera/camera2/pipe/compat/ClosedReason;", "cameraClosedReason", _UrlKt.FRAGMENT_ENCODE_SET, "cameraRetryCount", "Landroidx/camera/camera2/pipe/core/DurationNs;", "cameraRetryDurationNs", _UrlKt.FRAGMENT_ENCODE_SET, "cameraException", "cameraOpenDurationNs", "cameraActiveDurationNs", "cameraClosingDurationNs", "Landroidx/camera/camera2/pipe/CameraError;", "cameraErrorCode", "<init>", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCameraId-Dz_R5H8", "Landroidx/camera/camera2/pipe/compat/ClosedReason;", "getCameraClosedReason", "()Landroidx/camera/camera2/pipe/compat/ClosedReason;", "Ljava/lang/Integer;", "getCameraRetryCount", "()Ljava/lang/Integer;", "Landroidx/camera/camera2/pipe/core/DurationNs;", "getCameraRetryDurationNs-QWez1Bs", "()Landroidx/camera/camera2/pipe/core/DurationNs;", "Ljava/lang/Throwable;", "getCameraException", "()Ljava/lang/Throwable;", "getCameraOpenDurationNs-QWez1Bs", "getCameraActiveDurationNs-QWez1Bs", "getCameraClosingDurationNs-QWez1Bs", "Landroidx/camera/camera2/pipe/CameraError;", "getCameraErrorCode-mVEW8x0", "()Landroidx/camera/camera2/pipe/CameraError;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CameraStateClosed extends CameraState {
    private final DurationNs cameraActiveDurationNs;
    private final ClosedReason cameraClosedReason;
    private final DurationNs cameraClosingDurationNs;
    private final CameraError cameraErrorCode;
    private final Throwable cameraException;
    private final String cameraId;
    private final DurationNs cameraOpenDurationNs;
    private final Integer cameraRetryCount;
    private final DurationNs cameraRetryDurationNs;

    public /* synthetic */ CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, closedReason, num, durationNs, th, durationNs2, durationNs3, durationNs4, cameraError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CameraStateClosed)) {
            return false;
        }
        CameraStateClosed cameraStateClosed = (CameraStateClosed) other;
        return CameraId.m1301equalsimpl0(this.cameraId, cameraStateClosed.cameraId) && this.cameraClosedReason == cameraStateClosed.cameraClosedReason && Intrinsics.areEqual(this.cameraRetryCount, cameraStateClosed.cameraRetryCount) && Intrinsics.areEqual(this.cameraRetryDurationNs, cameraStateClosed.cameraRetryDurationNs) && Intrinsics.areEqual(this.cameraException, cameraStateClosed.cameraException) && Intrinsics.areEqual(this.cameraOpenDurationNs, cameraStateClosed.cameraOpenDurationNs) && Intrinsics.areEqual(this.cameraActiveDurationNs, cameraStateClosed.cameraActiveDurationNs) && Intrinsics.areEqual(this.cameraClosingDurationNs, cameraStateClosed.cameraClosingDurationNs) && Intrinsics.areEqual(this.cameraErrorCode, cameraStateClosed.cameraErrorCode);
    }

    public int hashCode() {
        int iM1302hashCodeimpl = ((CameraId.m1302hashCodeimpl(this.cameraId) * 31) + this.cameraClosedReason.hashCode()) * 31;
        Integer num = this.cameraRetryCount;
        int iHashCode = (iM1302hashCodeimpl + (num == null ? 0 : num.hashCode())) * 31;
        DurationNs durationNs = this.cameraRetryDurationNs;
        int iM1569hashCodeimpl = (iHashCode + (durationNs == null ? 0 : DurationNs.m1569hashCodeimpl(durationNs.getValue()))) * 31;
        Throwable th = this.cameraException;
        int iHashCode2 = (iM1569hashCodeimpl + (th == null ? 0 : th.hashCode())) * 31;
        DurationNs durationNs2 = this.cameraOpenDurationNs;
        int iM1569hashCodeimpl2 = (iHashCode2 + (durationNs2 == null ? 0 : DurationNs.m1569hashCodeimpl(durationNs2.getValue()))) * 31;
        DurationNs durationNs3 = this.cameraActiveDurationNs;
        int iM1569hashCodeimpl3 = (iM1569hashCodeimpl2 + (durationNs3 == null ? 0 : DurationNs.m1569hashCodeimpl(durationNs3.getValue()))) * 31;
        DurationNs durationNs4 = this.cameraClosingDurationNs;
        int iM1569hashCodeimpl4 = (iM1569hashCodeimpl3 + (durationNs4 == null ? 0 : DurationNs.m1569hashCodeimpl(durationNs4.getValue()))) * 31;
        CameraError cameraError = this.cameraErrorCode;
        return iM1569hashCodeimpl4 + (cameraError != null ? CameraError.m1250hashCodeimpl(cameraError.getValue()) : 0);
    }

    public String toString() {
        return "CameraStateClosed(cameraId=" + ((Object) CameraId.m1303toStringimpl(this.cameraId)) + ", cameraClosedReason=" + this.cameraClosedReason + ", cameraRetryCount=" + this.cameraRetryCount + ", cameraRetryDurationNs=" + this.cameraRetryDurationNs + ", cameraException=" + this.cameraException + ", cameraOpenDurationNs=" + this.cameraOpenDurationNs + ", cameraActiveDurationNs=" + this.cameraActiveDurationNs + ", cameraClosingDurationNs=" + this.cameraClosingDurationNs + ", cameraErrorCode=" + this.cameraErrorCode + ')';
    }

    private CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError) {
        super(null);
        this.cameraId = str;
        this.cameraClosedReason = closedReason;
        this.cameraRetryCount = num;
        this.cameraRetryDurationNs = durationNs;
        this.cameraException = th;
        this.cameraOpenDurationNs = durationNs2;
        this.cameraActiveDurationNs = durationNs3;
        this.cameraClosingDurationNs = durationNs4;
        this.cameraErrorCode = cameraError;
    }

    public /* synthetic */ CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, closedReason, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : durationNs, (i & 16) != 0 ? null : th, (i & 32) != 0 ? null : durationNs2, (i & 64) != 0 ? null : durationNs3, (i & 128) != 0 ? null : durationNs4, (i & 256) != 0 ? null : cameraError, null);
    }

    /* JADX INFO: renamed from: getCameraErrorCode-mVEW8x0, reason: not valid java name and from getter */
    public final CameraError getCameraErrorCode() {
        return this.cameraErrorCode;
    }
}
