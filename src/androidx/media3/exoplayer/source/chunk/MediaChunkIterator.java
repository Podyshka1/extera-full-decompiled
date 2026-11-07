package androidx.media3.exoplayer.source.chunk;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public interface MediaChunkIterator {
    public static final MediaChunkIterator EMPTY = new MediaChunkIterator() { // from class: androidx.media3.exoplayer.source.chunk.MediaChunkIterator.1
        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public boolean next() {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            throw new NoSuchElementException();
        }
    };

    long getChunkEndTimeUs();

    long getChunkStartTimeUs();

    boolean next();
}
