package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes4.dex */
public final class ExoTimeoutException extends RuntimeException {
    public final int timeoutOperation;

    public ExoTimeoutException(int i) {
        super(getErrorMessage(i));
        this.timeoutOperation = i;
    }

    private static String getErrorMessage(int i) {
        if (i == 1) {
            return "Player release timed out.";
        }
        if (i == 2) {
            return "Setting foreground mode timed out.";
        }
        if (i == 3) {
            return "Detaching surface timed out.";
        }
        return "Undefined timeout.";
    }
}
