package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class RealBufferedSink implements BufferedSink {
    public final Buffer bufferField;
    public boolean closed;
    public final Sink sink;

    @Override // okio.Sink
    public void write(Buffer source, long j) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.write(source, j);
        emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink write(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.write(byteString);
        return emitCompleteSegments();
    }

    public RealBufferedSink(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    @Override // okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this.bufferField, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeUtf8(string);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String string, int i, int i2) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeUtf8(string, i, i2);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8CodePoint(int i) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeUtf8CodePoint(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.write(source);
        return emitCompleteSegments();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.bufferField.write(source);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.write(source, i, i2);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink.outputStream.1
            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    throw new IOException("closed");
                }
                realBufferedSink.bufferField.writeByte((int) ((byte) i));
                RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int i, int i2) throws IOException {
                Intrinsics.checkNotNullParameter(data, "data");
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    throw new IOException("closed");
                }
                realBufferedSink.bufferField.write(data, i, i2);
                RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    return;
                }
                realBufferedSink.flush();
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws Throwable {
                RealBufferedSink.this.close();
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }
        };
    }

    @Override // okio.BufferedSink
    public BufferedSink writeByte(int i) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeByte(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShort(int i) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeShort(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeInt(int i) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeInt(i);
        return emitCompleteSegments();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    public BufferedSink writeIntLe(int i) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeIntLe(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeDecimalLong(long j) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeDecimalLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeHexadecimalUnsignedLong(long j) {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        this.bufferField.writeHexadecimalUnsignedLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink emitCompleteSegments() {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        long jCompleteSegmentByteCount = this.bufferField.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.bufferField, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (this.bufferField.size() > 0) {
            Sink sink = this.sink;
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
        }
        this.sink.flush();
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        try {
            if (this.bufferField.size() > 0) {
                Sink sink = this.sink;
                Buffer buffer = this.bufferField;
                sink.write(buffer, buffer.size());
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.sink.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "buffer(" + this.sink + ')';
    }
}
