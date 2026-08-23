package okio;

import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FileHandle implements Closeable {
    private boolean closed;
    private final ReentrantLock lock = _JvmPlatformKt.newLock();
    private int openStreamCount;
    private final boolean readWrite;

    protected abstract void protectedClose();

    protected abstract int protectedRead(long j, byte[] bArr, int i, int i2);

    protected abstract long protectedSize();

    public FileHandle(boolean z) {
        this.readWrite = z;
    }

    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final long size() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            return protectedSize();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final Source source(long j) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            this.openStreamCount++;
            reentrantLock.unlock();
            return new FileHandleSource(this, j);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            protectedClose();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long readNoCloseCheck(long j, Buffer buffer, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j2).toString());
        }
        long j3 = j2 + j;
        long j4 = j;
        while (true) {
            if (j4 >= j3) {
                break;
            }
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iProtectedRead = protectedRead(j4, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j3 - j4, 8192 - r7));
            if (iProtectedRead == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    buffer.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (j == j4) {
                    return -1L;
                }
            } else {
                segmentWritableSegment$okio.limit += iProtectedRead;
                long j5 = iProtectedRead;
                j4 += j5;
                buffer.setSize$okio(buffer.size() + j5);
            }
        }
        return j4 - j;
    }

    private static final class FileHandleSource implements Source {
        private boolean closed;
        private final FileHandle fileHandle;
        private long position;

        public FileHandleSource(FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j;
        }

        @Override // okio.Source
        public long read(Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.closed) {
                long noCloseCheck = this.fileHandle.readNoCloseCheck(this.position, sink, j);
                if (noCloseCheck != -1) {
                    this.position += noCloseCheck;
                }
                return noCloseCheck;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ReentrantLock lock = this.fileHandle.getLock();
            lock.lock();
            try {
                FileHandle fileHandle = this.fileHandle;
                fileHandle.openStreamCount--;
                if (this.fileHandle.openStreamCount == 0 && this.fileHandle.closed) {
                    Unit unit = Unit.INSTANCE;
                    lock.unlock();
                    this.fileHandle.protectedClose();
                }
            } finally {
                lock.unlock();
            }
        }
    }
}
