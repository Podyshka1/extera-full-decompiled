package okio.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.Buffer$$ExternalSyntheticBUOutline3;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lokio/internal/DefaultSocket;", "Lokio/Socket;", "socket", "Ljava/net/Socket;", "<init>", "(Ljava/net/Socket;)V", "getSocket", "()Ljava/net/Socket;", "closeBits", "Ljava/util/concurrent/atomic/AtomicInteger;", "source", "Lokio/Source;", "getSource", "()Lokio/Source;", "sink", "Lokio/Sink;", "getSink", "()Lokio/Sink;", "cancel", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "SocketSink", "SocketSource", "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class DefaultSocket implements Socket {
    private final java.net.Socket socket;
    private AtomicInteger closeBits = new AtomicInteger();
    private final Source source = new SocketSource();
    private final Sink sink = new SocketSink();

    public DefaultSocket(java.net.Socket socket) {
        this.socket = socket;
    }

    public final java.net.Socket getSocket() {
        return this.socket;
    }

    @Override // okio.Socket
    public Source getSource() {
        return this.source;
    }

    @Override // okio.Socket
    public Sink getSink() {
        return this.sink;
    }

    @Override // okio.Socket
    public void cancel() throws IOException {
        this.socket.close();
    }

    public String toString() {
        return this.socket.toString();
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lokio/internal/DefaultSocket$SocketSink;", "Lokio/Sink;", "<init>", "(Lokio/internal/DefaultSocket;)V", "outputStream", "Ljava/io/OutputStream;", "kotlin.jvm.PlatformType", "timeout", "Lokio/internal/SocketAsyncTimeout;", "write", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/Buffer;", "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "flush", "close", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n85#2:177\n195#3,11:178\n195#3,11:189\n195#3,11:200\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n*L\n60#1:177\n61#1:178,11\n77#1:189,11\n83#1:200,11\n*E\n"})
    public final class SocketSink implements Sink {
        private final OutputStream outputStream;
        private final SocketAsyncTimeout timeout;

        public SocketSink() {
            this.outputStream = DefaultSocket.this.getSocket().getOutputStream();
            this.timeout = new SocketAsyncTimeout(DefaultSocket.this.getSocket());
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            SegmentedByteString.checkOffsetAndCount(source.getSize(), 0L, byteCount);
            while (byteCount > 0) {
                this.timeout.throwIfReached();
                Segment segment = source.head;
                int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.enter();
                try {
                    try {
                        this.outputStream.write(segment.data, segment.pos, iMin);
                        Unit unit = Unit.INSTANCE;
                        if (!socketAsyncTimeout.exit()) {
                            segment.pos += iMin;
                            long j = iMin;
                            byteCount -= j;
                            source.setSize$okio(source.getSize() - j);
                            if (segment.pos == segment.limit) {
                                source.head = segment.pop();
                                SegmentPool.recycle(segment);
                            }
                        } else {
                            throw socketAsyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        if (!socketAsyncTimeout.exit()) {
                            throw e;
                        }
                        throw socketAsyncTimeout.access$newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    socketAsyncTimeout.exit();
                    throw th;
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            socketAsyncTimeout.enter();
            try {
                this.outputStream.flush();
                Unit unit = Unit.INSTANCE;
                if (socketAsyncTimeout.exit()) {
                    throw socketAsyncTimeout.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.access$newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            DefaultSocket defaultSocket = DefaultSocket.this;
            socketAsyncTimeout.enter();
            try {
                int bitsOrZero = _AtomicKt.setBitsOrZero(defaultSocket.closeBits, 1);
                if (bitsOrZero != 0) {
                    if (bitsOrZero != 3) {
                        if (!defaultSocket.getSocket().isClosed() && !defaultSocket.getSocket().isOutputShutdown()) {
                            this.outputStream.flush();
                            try {
                                defaultSocket.getSocket().shutdownOutput();
                            } catch (UnsupportedOperationException unused) {
                                this.outputStream.close();
                            }
                        }
                        return;
                    }
                    defaultSocket.getSocket().close();
                    Unit unit = Unit.INSTANCE;
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.access$newTimeoutException(null);
                    }
                    return;
                }
                return;
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.access$newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
            socketAsyncTimeout.exit();
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout, reason: from getter */
        public SocketAsyncTimeout getTimeout() {
            return this.timeout;
        }

        public String toString() {
            return "sink(" + DefaultSocket.this.getSocket() + ')';
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokio/internal/DefaultSocket$SocketSource;", "Lokio/Source;", "<init>", "(Lokio/internal/DefaultSocket;)V", "inputStream", "Ljava/io/InputStream;", "kotlin.jvm.PlatformType", "timeout", "Lokio/internal/SocketAsyncTimeout;", "read", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/Buffer;", "byteCount", "close", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n1#2:177\n85#3:178\n195#4,11:179\n195#4,11:190\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n121#1:178\n123#1:179,11\n144#1:190,11\n*E\n"})
    public final class SocketSource implements Source {
        private final InputStream inputStream;
        private final SocketAsyncTimeout timeout;

        public SocketSource() {
            this.inputStream = DefaultSocket.this.getSocket().getInputStream();
            this.timeout = new SocketAsyncTimeout(DefaultSocket.this.getSocket());
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount == 0) {
                return 0L;
            }
            if (byteCount < 0) {
                Buffer$$ExternalSyntheticBUOutline3.m836m("byteCount < 0: ", byteCount);
                return 0L;
            }
            this.timeout.throwIfReached();
            Segment segmentWritableSegment$okio = sink.writableSegment$okio(1);
            int iMin = (int) Math.min(byteCount, 8192 - segmentWritableSegment$okio.limit);
            try {
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.enter();
                try {
                    int i = this.inputStream.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.access$newTimeoutException(null);
                    }
                    if (i == -1) {
                        if (segmentWritableSegment$okio.pos != segmentWritableSegment$okio.limit) {
                            return -1L;
                        }
                        sink.head = segmentWritableSegment$okio.pop();
                        SegmentPool.recycle(segmentWritableSegment$okio);
                        return -1L;
                    }
                    segmentWritableSegment$okio.limit += i;
                    long j = i;
                    sink.setSize$okio(sink.getSize() + j);
                    return j;
                } catch (IOException e) {
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.access$newTimeoutException(e);
                    }
                    throw e;
                } finally {
                    socketAsyncTimeout.exit();
                }
            } catch (AssertionError e2) {
                if (_JavaIoKt.isAndroidGetsocknameError(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            DefaultSocket defaultSocket = DefaultSocket.this;
            socketAsyncTimeout.enter();
            try {
                int bitsOrZero = _AtomicKt.setBitsOrZero(defaultSocket.closeBits, 2);
                if (bitsOrZero != 0) {
                    if (bitsOrZero == 3) {
                        defaultSocket.getSocket().close();
                    } else {
                        if (defaultSocket.getSocket().isClosed() || defaultSocket.getSocket().isInputShutdown()) {
                            return;
                        }
                        try {
                            defaultSocket.getSocket().shutdownInput();
                        } catch (UnsupportedOperationException unused) {
                            this.inputStream.close();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.access$newTimeoutException(null);
                    }
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.access$newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout, reason: from getter */
        public SocketAsyncTimeout getTimeout() {
            return this.timeout;
        }

        public String toString() {
            return "source(" + DefaultSocket.this.getSocket() + ')';
        }
    }
}
