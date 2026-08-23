package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.RetryPolicy;
import androidx.camera.core.impl.CameraValidator;

/* JADX INFO: loaded from: classes4.dex */
public final class CameraProviderExecutionState implements RetryPolicy.ExecutionState {
    private final int mAttemptCount;
    private final Throwable mCause;
    private final int mStatus;
    private final long mTaskExecutedTimeInMillis;

    public CameraProviderExecutionState(long j, int i, Throwable th) {
        this.mTaskExecutedTimeInMillis = SystemClock.elapsedRealtime() - j;
        this.mAttemptCount = i;
        if (th instanceof CameraValidator.CameraIdListIncorrectException) {
            this.mStatus = 2;
            this.mCause = th;
            return;
        }
        if (th instanceof InitializationException) {
            Throwable cause = th.getCause();
            th = cause != null ? cause : th;
            this.mCause = th;
            if (th instanceof CameraUnavailableException) {
                this.mStatus = 2;
                return;
            } else if (th instanceof IllegalArgumentException) {
                this.mStatus = 1;
                return;
            } else {
                this.mStatus = 0;
                return;
            }
        }
        this.mStatus = 0;
        this.mCause = th;
    }

    @Override // androidx.camera.core.RetryPolicy.ExecutionState
    public int getStatus() {
        return this.mStatus;
    }

    @Override // androidx.camera.core.RetryPolicy.ExecutionState
    public Throwable getCause() {
        return this.mCause;
    }

    @Override // androidx.camera.core.RetryPolicy.ExecutionState
    public long getExecutedTimeInMillis() {
        return this.mTaskExecutedTimeInMillis;
    }
}
