package androidx.camera.camera2.pipe.core;

import android.os.SystemClock;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\n\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\n\u0010\t¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/pipe/core/SystemClockOffsets;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "realtimeNsToUtcMs", "realtimeNsToMonotonicNs", "<init>", "(JJ)V", "J", "getRealtimeNsToUtcMs", "()J", "getRealtimeNsToMonotonicNs", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemClockOffsets {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long realtimeNsToMonotonicNs;
    private final long realtimeNsToUtcMs;

    public /* synthetic */ SystemClockOffsets(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    private SystemClockOffsets(long j, long j2) {
        this.realtimeNsToUtcMs = j;
        this.realtimeNsToMonotonicNs = j2;
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "estimateRealtimeNsToUtcMs", "()J", "estimateRealtimeNsToMonotonicNs", "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;", "estimate", "()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;", "NS_PER_MS", "J", "NS_PER_MS_X_2", _UrlKt.FRAGMENT_ENCODE_SET, "MEASUREMENT_ITERATIONS", "I", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SystemClockOffsets estimate() {
            return new SystemClockOffsets(estimateRealtimeNsToUtcMs(), estimateRealtimeNsToMonotonicNs(), null);
        }

        @JvmStatic
        private final long estimateRealtimeNsToUtcMs() {
            long j = LongCompanionObject.MAX_VALUE;
            long j2 = 0;
            for (int i = 0; i < 3; i++) {
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos();
                long j3 = jElapsedRealtimeNanos2 - jElapsedRealtimeNanos;
                if (j3 < j) {
                    j2 = ((jElapsedRealtimeNanos + jElapsedRealtimeNanos2) / 2000000) - jCurrentTimeMillis;
                    j = j3;
                }
            }
            return j2;
        }

        @JvmStatic
        private final long estimateRealtimeNsToMonotonicNs() {
            long j = LongCompanionObject.MAX_VALUE;
            long j2 = 0;
            for (int i = 0; i < 3; i++) {
                long jNanoTime = System.nanoTime();
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long jNanoTime2 = System.nanoTime();
                long j3 = jNanoTime2 - jNanoTime;
                if (j3 < j) {
                    j2 = jElapsedRealtimeNanos - ((jNanoTime + jNanoTime2) / 2);
                    j = j3;
                }
            }
            return j2;
        }
    }

    public final long getRealtimeNsToMonotonicNs() {
        return this.realtimeNsToMonotonicNs;
    }
}
