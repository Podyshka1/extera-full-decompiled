package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.DurationNs;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RetryingCameraStateOpenerKt {
    private static final long defaultCameraRetryTimeoutNs = DurationNs.m1880constructorimpl(RealConnection.IDLE_CONNECTION_HEALTHY_NS);
    private static final long activeResumeCameraRetryTimeoutNs = DurationNs.m1880constructorimpl(1800000000000L);
    private static final DurationNs[] activeResumeCameraRetryThresholds = {DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(120000000000L)), DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(300000000000L))};
}
