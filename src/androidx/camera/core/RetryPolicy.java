package androidx.camera.core;

import androidx.camera.core.RetryPolicy;
import androidx.camera.core.impl.CameraProviderInitRetryPolicy;
import androidx.camera.core.impl.RetryPolicyInternal;
import androidx.camera.core.impl.TimeoutRetryPolicy;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public interface RetryPolicy {
    public static final RetryPolicy NEVER = new RetryPolicy() { // from class: androidx.camera.core.RetryPolicy$$ExternalSyntheticLambda0
        @Override // androidx.camera.core.RetryPolicy
        public /* synthetic */ long getTimeoutInMillis() {
            return RetryPolicy.CC.$default$getTimeoutInMillis(this);
        }

        @Override // androidx.camera.core.RetryPolicy
        public final RetryPolicy.RetryConfig onRetryDecisionRequested(RetryPolicy.ExecutionState executionState) {
            return RetryPolicy.RetryConfig.NOT_RETRY;
        }
    };
    public static final RetryPolicy DEFAULT = new CameraProviderInitRetryPolicy.Legacy(CC.getDefaultRetryTimeoutInMillis());
    public static final RetryPolicy RETRY_UNAVAILABLE_CAMERA = new CameraProviderInitRetryPolicy(CC.getDefaultRetryTimeoutInMillis());

    public interface ExecutionState {
        Throwable getCause();

        long getExecutedTimeInMillis();

        int getStatus();
    }

    long getTimeoutInMillis();

    RetryConfig onRetryDecisionRequested(ExecutionState executionState);

    /* JADX INFO: renamed from: androidx.camera.core.RetryPolicy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            RetryPolicy retryPolicy = RetryPolicy.NEVER;
        }

        public static long getDefaultRetryTimeoutInMillis() {
            return 6000L;
        }

        public static long $default$getTimeoutInMillis(RetryPolicy retryPolicy) {
            return 0L;
        }
    }

    public static final class Builder {
        private final RetryPolicy mBasePolicy;
        private long mTimeoutInMillis;

        public Builder(RetryPolicy retryPolicy) {
            this.mBasePolicy = retryPolicy;
            this.mTimeoutInMillis = retryPolicy.getTimeoutInMillis();
        }

        public RetryPolicy build() {
            RetryPolicy retryPolicy = this.mBasePolicy;
            if (retryPolicy instanceof RetryPolicyInternal) {
                return ((RetryPolicyInternal) retryPolicy).copy(this.mTimeoutInMillis);
            }
            return new TimeoutRetryPolicy(this.mTimeoutInMillis, retryPolicy);
        }
    }

    public static final class RetryConfig {
        private final boolean mCompleteWithoutFailure;
        private final long mDelayInMillis;
        private final boolean mShouldRetry;
        public static final RetryConfig NOT_RETRY = new RetryConfig(false, 0);
        public static final RetryConfig DEFAULT_DELAY_RETRY = new RetryConfig(true);
        public static final RetryConfig MINI_DELAY_RETRY = new RetryConfig(true, 100);
        public static RetryConfig COMPLETE_WITHOUT_FAILURE = new RetryConfig(false, 0, true);

        public static long getDefaultRetryDelayInMillis() {
            return 500L;
        }

        private RetryConfig(boolean z) {
            this(z, getDefaultRetryDelayInMillis());
        }

        private RetryConfig(boolean z, long j) {
            this(z, j, false);
        }

        private RetryConfig(boolean z, long j, boolean z2) {
            this.mShouldRetry = z;
            this.mDelayInMillis = j;
            if (z2) {
                Preconditions.checkArgument(!z, "shouldRetry must be false when completeWithoutFailure is set to true");
            }
            this.mCompleteWithoutFailure = z2;
        }

        public boolean shouldRetry() {
            return this.mShouldRetry;
        }

        public long getRetryDelayInMillis() {
            return this.mDelayInMillis;
        }

        public boolean shouldCompleteWithoutFailure() {
            return this.mCompleteWithoutFailure;
        }
    }
}
