package com.google.android.exoplayer2.source.chunk;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {
    private long currentIndex;
    private final long fromIndex;
    private final long toIndex;

    public BaseMediaChunkIterator(long j, long j2) {
        this.fromIndex = j;
        this.toIndex = j2;
        reset();
    }

    public boolean isEnded() {
        return this.currentIndex > this.toIndex;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public boolean next() {
        this.currentIndex++;
        return !isEnded();
    }

    public void reset() {
        this.currentIndex = this.fromIndex - 1;
    }

    public final void checkInBounds() {
        long j = this.currentIndex;
        if (j < this.fromIndex || j > this.toIndex) {
            Utils$$ExternalSyntheticBUOutline0.m978m();
        }
    }

    public final long getCurrentIndex() {
        return this.currentIndex;
    }
}
