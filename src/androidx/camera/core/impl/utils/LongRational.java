package androidx.camera.core.impl.utils;

import com.google.android.gms.cast.framework.media.NotificationOptions;

/* JADX INFO: loaded from: classes3.dex */
final class LongRational {
    private final long mDenominator;
    private final long mNumerator;

    public LongRational(long j, long j2) {
        this.mNumerator = j;
        this.mDenominator = j2;
    }

    public LongRational(double d) {
        this((long) (d * 10000.0d), NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    public long getNumerator() {
        return this.mNumerator;
    }

    public long getDenominator() {
        return this.mDenominator;
    }

    public String toString() {
        return this.mNumerator + "/" + this.mDenominator;
    }
}
