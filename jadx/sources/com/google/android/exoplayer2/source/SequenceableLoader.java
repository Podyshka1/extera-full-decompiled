package com.google.android.exoplayer2.source;

/* JADX INFO: loaded from: classes4.dex */
public interface SequenceableLoader {

    public interface Callback {
        void onContinueLoadingRequested(SequenceableLoader sequenceableLoader);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j);
}
