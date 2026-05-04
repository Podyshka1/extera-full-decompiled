package androidx.camera.camera2.pipe.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputMatcher {
    public static final Companion Companion = new Companion(null);
    private static final OutputMatcher EXACT = new OutputMatcher(0, 0);
    private final AtomicRef currentOffset;
    private final long errorDelta;

    public OutputMatcher(long j, long j2) {
        this.errorDelta = j2;
        this.currentOffset = AtomicFU.atomic(Long.valueOf(j));
    }

    public final boolean fuzzyEqual(long j, long j2) {
        long jLongValue = ((Number) this.currentOffset.getValue()).longValue();
        long j3 = (j - j2) + jLongValue;
        if (j3 == 0) {
            return true;
        }
        long j4 = this.errorDelta;
        if (j4 == 0 || j3 >= j4 || j3 <= (-j4)) {
            return false;
        }
        this.currentOffset.compareAndSet(Long.valueOf(jLongValue), Long.valueOf(jLongValue - j3));
        return true;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final OutputMatcher getEXACT() {
            return OutputMatcher.EXACT;
        }
    }
}
