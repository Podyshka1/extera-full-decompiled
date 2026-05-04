package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes4.dex */
public interface Decoder {
    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    String getName();

    void queueInputBuffer(Object obj);

    void release();
}
