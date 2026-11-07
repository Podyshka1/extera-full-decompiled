package androidx.camera.camera2.pipe;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\rR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/Result3A;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Result3A$Status;", "status", "Landroidx/camera/camera2/pipe/FrameMetadata;", "frameMetadata", "<init>", "(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getStatus-JvTi9ms", "Landroidx/camera/camera2/pipe/FrameMetadata;", "getFrameMetadata", "()Landroidx/camera/camera2/pipe/FrameMetadata;", "Status", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Result3A {
    private final FrameMetadata frameMetadata;
    private final int status;

    public /* synthetic */ Result3A(int i, FrameMetadata frameMetadata, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, frameMetadata);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Result3A)) {
            return false;
        }
        Result3A result3A = (Result3A) other;
        return Status.m1504equalsimpl0(this.status, result3A.status) && Intrinsics.areEqual(this.frameMetadata, result3A.frameMetadata);
    }

    public int hashCode() {
        int iM1505hashCodeimpl = Status.m1505hashCodeimpl(this.status) * 31;
        FrameMetadata frameMetadata = this.frameMetadata;
        return iM1505hashCodeimpl + (frameMetadata == null ? 0 : frameMetadata.hashCode());
    }

    public String toString() {
        return "Result3A(status=" + ((Object) Status.m1506toStringimpl(this.status)) + ", frameMetadata=" + this.frameMetadata + ')';
    }

    private Result3A(int i, FrameMetadata frameMetadata) {
        this.status = i;
        this.frameMetadata = frameMetadata;
    }

    public /* synthetic */ Result3A(int i, FrameMetadata frameMetadata, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : frameMetadata, null);
    }

    public final FrameMetadata getFrameMetadata() {
        return this.frameMetadata;
    }

    /* JADX INFO: renamed from: getStatus-JvTi9ms, reason: not valid java name and from getter */
    public final int getStatus() {
        return this.status;
    }

    @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087@\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/Result3A$Status;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class Status {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int OK = m1503constructorimpl(0);
        private static final int FRAME_LIMIT_REACHED = m1503constructorimpl(1);
        private static final int TIME_LIMIT_REACHED = m1503constructorimpl(2);
        private static final int SUBMIT_CANCELLED = m1503constructorimpl(3);
        private static final int SUBMIT_FAILED = m1503constructorimpl(4);

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m1503constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1504equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1505hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1506toStringimpl(int i) {
            return "Status(value=" + i + ')';
        }

        @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u0013\u0010\r\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u000e\u0010\u0007R\u0013\u0010\u000f\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0010\u0010\u0007¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/Result3A$Status$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "OK", "Landroidx/camera/camera2/pipe/Result3A$Status;", "getOK-JvTi9ms", "()I", "I", "FRAME_LIMIT_REACHED", "getFRAME_LIMIT_REACHED-JvTi9ms", "TIME_LIMIT_REACHED", "getTIME_LIMIT_REACHED-JvTi9ms", "SUBMIT_CANCELLED", "getSUBMIT_CANCELLED-JvTi9ms", "SUBMIT_FAILED", "getSUBMIT_FAILED-JvTi9ms", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getOK-JvTi9ms, reason: not valid java name */
            public final int m1508getOKJvTi9ms() {
                return Status.OK;
            }

            /* JADX INFO: renamed from: getFRAME_LIMIT_REACHED-JvTi9ms, reason: not valid java name */
            public final int m1507getFRAME_LIMIT_REACHEDJvTi9ms() {
                return Status.FRAME_LIMIT_REACHED;
            }

            /* JADX INFO: renamed from: getTIME_LIMIT_REACHED-JvTi9ms, reason: not valid java name */
            public final int m1511getTIME_LIMIT_REACHEDJvTi9ms() {
                return Status.TIME_LIMIT_REACHED;
            }

            /* JADX INFO: renamed from: getSUBMIT_CANCELLED-JvTi9ms, reason: not valid java name */
            public final int m1509getSUBMIT_CANCELLEDJvTi9ms() {
                return Status.SUBMIT_CANCELLED;
            }

            /* JADX INFO: renamed from: getSUBMIT_FAILED-JvTi9ms, reason: not valid java name */
            public final int m1510getSUBMIT_FAILEDJvTi9ms() {
                return Status.SUBMIT_FAILED;
            }
        }
    }
}
