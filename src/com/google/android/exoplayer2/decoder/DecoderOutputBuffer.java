package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DecoderOutputBuffer extends Buffer {
    public int skippedOutputBufferCount;
    public long timeUs;

    public interface Owner {
        void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer);
    }

    public abstract void release();
}
