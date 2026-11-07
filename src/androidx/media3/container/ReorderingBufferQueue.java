package androidx.media3.container;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes3.dex */
public final class ReorderingBufferQueue {
    private BuffersWithTimestamp lastQueuedBuffer;
    private final OutputConsumer outputConsumer;
    private final ArrayDeque<ParsableByteArray> unusedParsableByteArrays = new ArrayDeque<>();
    private final ArrayDeque<BuffersWithTimestamp> unusedBuffersWithTimestamp = new ArrayDeque<>();
    private final PriorityQueue<BuffersWithTimestamp> pendingBuffers = new PriorityQueue<>();
    private int reorderingQueueSize = -1;

    public interface OutputConsumer {
        void consume(long j, ParsableByteArray parsableByteArray);
    }

    public ReorderingBufferQueue(OutputConsumer outputConsumer) {
        this.outputConsumer = outputConsumer;
    }

    public void setMaxSize(int i) {
        Assertions.checkState(i >= 0);
        this.reorderingQueueSize = i;
        flushQueueDownToSize(i);
    }

    public int getMaxSize() {
        return this.reorderingQueueSize;
    }

    public void add(long j, ParsableByteArray parsableByteArray) {
        BuffersWithTimestamp buffersWithTimestampPop;
        int i = this.reorderingQueueSize;
        if (i == 0 || (i != -1 && this.pendingBuffers.size() >= this.reorderingQueueSize && j < ((BuffersWithTimestamp) Util.castNonNull(this.pendingBuffers.peek())).presentationTimeUs)) {
            this.outputConsumer.consume(j, parsableByteArray);
            return;
        }
        ParsableByteArray parsableByteArrayCopy = copy(parsableByteArray);
        BuffersWithTimestamp buffersWithTimestamp = this.lastQueuedBuffer;
        if (buffersWithTimestamp != null && j == buffersWithTimestamp.presentationTimeUs) {
            buffersWithTimestamp.nalBuffers.add(parsableByteArrayCopy);
            return;
        }
        if (this.unusedBuffersWithTimestamp.isEmpty()) {
            buffersWithTimestampPop = new BuffersWithTimestamp();
        } else {
            buffersWithTimestampPop = this.unusedBuffersWithTimestamp.pop();
        }
        buffersWithTimestampPop.init(j, parsableByteArrayCopy);
        this.pendingBuffers.add(buffersWithTimestampPop);
        this.lastQueuedBuffer = buffersWithTimestampPop;
        int i2 = this.reorderingQueueSize;
        if (i2 != -1) {
            flushQueueDownToSize(i2);
        }
    }

    private ParsableByteArray copy(ParsableByteArray parsableByteArray) {
        ParsableByteArray parsableByteArrayPop;
        if (this.unusedParsableByteArrays.isEmpty()) {
            parsableByteArrayPop = new ParsableByteArray();
        } else {
            parsableByteArrayPop = this.unusedParsableByteArrays.pop();
        }
        parsableByteArrayPop.reset(parsableByteArray.bytesLeft());
        System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArrayPop.getData(), 0, parsableByteArrayPop.bytesLeft());
        return parsableByteArrayPop;
    }

    public void clear() {
        this.pendingBuffers.clear();
    }

    public void flush() {
        flushQueueDownToSize(0);
    }

    private void flushQueueDownToSize(int i) {
        while (this.pendingBuffers.size() > i) {
            BuffersWithTimestamp buffersWithTimestamp = (BuffersWithTimestamp) Util.castNonNull(this.pendingBuffers.poll());
            for (int i2 = 0; i2 < buffersWithTimestamp.nalBuffers.size(); i2++) {
                this.outputConsumer.consume(buffersWithTimestamp.presentationTimeUs, buffersWithTimestamp.nalBuffers.get(i2));
                this.unusedParsableByteArrays.push(buffersWithTimestamp.nalBuffers.get(i2));
            }
            buffersWithTimestamp.nalBuffers.clear();
            BuffersWithTimestamp buffersWithTimestamp2 = this.lastQueuedBuffer;
            if (buffersWithTimestamp2 != null && buffersWithTimestamp2.presentationTimeUs == buffersWithTimestamp.presentationTimeUs) {
                this.lastQueuedBuffer = null;
            }
            this.unusedBuffersWithTimestamp.push(buffersWithTimestamp);
        }
    }

    public static final class BuffersWithTimestamp implements Comparable<BuffersWithTimestamp> {
        public long presentationTimeUs = -9223372036854775807L;
        public final List<ParsableByteArray> nalBuffers = new ArrayList();

        public void init(long j, ParsableByteArray parsableByteArray) {
            Assertions.checkArgument(j != -9223372036854775807L);
            Assertions.checkState(this.nalBuffers.isEmpty());
            this.presentationTimeUs = j;
            this.nalBuffers.add(parsableByteArray);
        }

        @Override // java.lang.Comparable
        public int compareTo(BuffersWithTimestamp buffersWithTimestamp) {
            return Long.compare(this.presentationTimeUs, buffersWithTimestamp.presentationTimeUs);
        }
    }
}
