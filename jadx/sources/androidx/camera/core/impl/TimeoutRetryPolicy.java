package androidx.camera.core.impl;

import androidx.camera.core.RetryPolicy;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TimeoutRetryPolicy implements RetryPolicy {
    private final RetryPolicy mDelegatePolicy;
    private final long mTimeoutInMillis;

    public TimeoutRetryPolicy(long j, RetryPolicy retryPolicy) {
        Preconditions.checkArgument(j >= 0, "Timeout must be non-negative.");
        this.mTimeoutInMillis = j;
        this.mDelegatePolicy = retryPolicy;
    }

    @Override // androidx.camera.core.RetryPolicy
    public RetryPolicy.RetryConfig onRetryDecisionRequested(RetryPolicy.ExecutionState executionState) {
        RetryPolicy.RetryConfig retryConfigOnRetryDecisionRequested = this.mDelegatePolicy.onRetryDecisionRequested(executionState);
        return (getTimeoutInMillis() <= 0 || executionState.getExecutedTimeInMillis() < getTimeoutInMillis() - retryConfigOnRetryDecisionRequested.getRetryDelayInMillis()) ? retryConfigOnRetryDecisionRequested : RetryPolicy.RetryConfig.NOT_RETRY;
    }

    @Override // androidx.camera.core.RetryPolicy
    public long getTimeoutInMillis() {
        return this.mTimeoutInMillis;
    }
}
