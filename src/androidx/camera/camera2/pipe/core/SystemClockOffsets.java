package androidx.camera.camera2.pipe.core;

import android.os.SystemClock;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemClockOffsets {
    public static final Companion Companion = new Companion(null);
    private final long realtimeNsToMonotonicNs;
    private final long realtimeNsToUtcMs;

    public /* synthetic */ SystemClockOffsets(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    private SystemClockOffsets(long j, long j2) {
        this.realtimeNsToUtcMs = j;
        this.realtimeNsToMonotonicNs = j2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SystemClockOffsets estimate() {
            return new SystemClockOffsets(estimateRealtimeNsToUtcMs(), estimateRealtimeNsToMonotonicNs(), null);
        }

        private final long estimateRealtimeNsToUtcMs() {
            long j = Long.MAX_VALUE;
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

        private final long estimateRealtimeNsToMonotonicNs() {
            long j = Long.MAX_VALUE;
            long j2 = 0;
            for (int i = 0; i < 3; i++) {
                long jNanoTime = System.nanoTime();
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long jNanoTime2 = System.nanoTime();
                long j3 = jNanoTime2 - jNanoTime;
                if (j3 < j) {
                    j2 = jElapsedRealtimeNanos - ((jNanoTime + jNanoTime2) / ((long) 2));
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
