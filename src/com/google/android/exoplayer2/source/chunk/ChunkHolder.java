package com.google.android.exoplayer2.source.chunk;

/* JADX INFO: loaded from: classes4.dex */
public final class ChunkHolder {
    public Chunk chunk;
    public boolean endOfStream;

    public void clear() {
        this.chunk = null;
        this.endOfStream = false;
    }
}
