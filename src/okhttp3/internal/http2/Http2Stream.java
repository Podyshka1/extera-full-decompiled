package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
public final class Http2Stream implements Lockable, Socket {
    public static final Companion Companion = new Companion(null);
    public static final long EMIT_BUFFER_SIZE = 16384;
    private final Http2Connection connection;
    private ErrorCode errorCode;
    private IOException errorException;
    private boolean hasResponseHeaders;
    private final ArrayDeque<Headers> headersQueue;

    /* JADX INFO: renamed from: id */
    private final int f1553id;
    private final WindowCounter readBytes;
    private final StreamTimeout readTimeout;
    private final FramingSink sink;
    private final FramingSource source;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final StreamTimeout writeTimeout;

    public final void waitForIo$okhttp() throws InterruptedIOException {
        try {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public Http2Stream(int i, Http2Connection connection, boolean z, boolean z2, Headers headers) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.f1553id = i;
        this.connection = connection;
        this.readBytes = new WindowCounter(i);
        this.writeBytesMaximum = connection.getPeerSettings().getInitialWindowSize();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.headersQueue = arrayDeque;
        this.source = new FramingSource(connection.getOkHttpSettings().getInitialWindowSize(), z2);
        this.sink = new FramingSink(z);
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        if (headers != null) {
            if (isLocallyInitiated()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(headers);
        } else if (!isLocallyInitiated()) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    public final int getId() {
        return this.f1553id;
    }

    public final Http2Connection getConnection() {
        return this.connection;
    }

    private final boolean closeInternal(ErrorCode errorCode, IOException iOException) {
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (getErrorCode$okhttp() != null) {
                return false;
            }
            this.errorCode = errorCode;
            this.errorException = iOException;
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            if (getSource().getFinished$okhttp() && getSink().getFinished()) {
                return false;
            }
            Unit unit = Unit.INSTANCE;
            this.connection.removeStream$okhttp(this.f1553id);
            return true;
        }
    }

    public final void cancelStreamIfNecessary$okhttp() {
        boolean z;
        boolean zIsOpen;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                z = !getSource().getFinished$okhttp() && getSource().getClosed$okhttp() && (getSink().getFinished() || getSink().getClosed());
                zIsOpen = isOpen();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            close(ErrorCode.CANCEL, null);
        } else {
            if (zIsOpen) {
                return;
            }
            this.connection.removeStream$okhttp(this.f1553id);
        }
    }

    public final void receiveData(BufferedSource source, int i) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        getSource().receive$okhttp(source, i);
    }

    public final void receiveHeaders(Headers headers, boolean z) {
        boolean zIsOpen;
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                if (!this.hasResponseHeaders || headers.get(Header.RESPONSE_STATUS_UTF8) != null || headers.get(Header.TARGET_METHOD_UTF8) != null) {
                    this.hasResponseHeaders = true;
                    this.headersQueue.add(headers);
                } else {
                    getSource().setTrailers(headers);
                }
                if (z) {
                    getSource().setFinished$okhttp(true);
                }
                zIsOpen = isOpen();
                Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                notifyAll();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream$okhttp(this.f1553id);
    }

    public final void writeHeaders(List<Header> responseHeaders, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                this.hasResponseHeaders = true;
                if (z) {
                    getSink().setFinished(true);
                    Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                    notifyAll();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            synchronized (this) {
                z2 = this.connection.getWriteBytesTotal() >= this.connection.getWriteBytesMaximum();
            }
        }
        this.connection.writeHeaders$okhttp(this.f1553id, z, responseHeaders);
        if (z2) {
            this.connection.flush();
        }
    }

    public final WindowCounter getReadBytes() {
        return this.readBytes;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final void setWriteBytesTotal$okhttp(long j) {
        this.writeBytesTotal = j;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final void setWriteBytesMaximum$okhttp(long j) {
        this.writeBytesMaximum = j;
    }

    public final void enqueueTrailers(Headers trailers) {
        Intrinsics.checkNotNullParameter(trailers, "trailers");
        synchronized (this) {
            if (getSink().getFinished()) {
                throw new IllegalStateException("already finished");
            }
            if (trailers.size() == 0) {
                throw new IllegalArgumentException("trailers.size() == 0");
            }
            getSink().setTrailers(trailers);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final ErrorCode getErrorCode$okhttp() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.errorCode;
        }
        return errorCode;
    }

    public final boolean isOpen() {
        synchronized (this) {
            try {
                if (getErrorCode$okhttp() != null) {
                    return false;
                }
                if (getSource().getFinished$okhttp() || getSource().getClosed$okhttp()) {
                    if (getSink().getFinished() || getSink().getClosed()) {
                        if (this.hasResponseHeaders) {
                            return false;
                        }
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isSourceComplete() {
        boolean z;
        synchronized (this) {
            if (getSource().getFinished$okhttp()) {
                z = getSource().getReadBuffer().exhausted();
            }
        }
        return z;
    }

    public final Headers peekTrailers() throws IOException {
        synchronized (this) {
            if (getSource().getFinished$okhttp() && getSource().getReceiveBuffer().exhausted() && getSource().getReadBuffer().exhausted()) {
                Headers trailers = getSource().getTrailers();
                if (trailers == null) {
                    trailers = Headers.EMPTY;
                }
                return trailers;
            }
            if (getErrorCode$okhttp() == null) {
                return null;
            }
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode$okhttp = getErrorCode$okhttp();
            Intrinsics.checkNotNull(errorCode$okhttp);
            throw new StreamResetException(errorCode$okhttp);
        }
    }

    public final void receiveRstStream(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        synchronized (this) {
            try {
                if (getErrorCode$okhttp() == null) {
                    this.errorCode = errorCode;
                    Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                    notifyAll();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Headers takeHeaders(boolean z) {
        Headers headers;
        synchronized (this) {
            while (this.headersQueue.isEmpty() && getErrorCode$okhttp() == null) {
                try {
                    boolean z2 = z || doReadTimeout();
                    if (z2) {
                        this.readTimeout.enter();
                    }
                    try {
                        waitForIo$okhttp();
                        if (z2) {
                            this.readTimeout.exitAndThrowIfTimedOut();
                        }
                    } catch (Throwable th) {
                        if (z2) {
                            this.readTimeout.exitAndThrowIfTimedOut();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!this.headersQueue.isEmpty()) {
                Headers headersRemoveFirst = this.headersQueue.removeFirst();
                Intrinsics.checkNotNullExpressionValue(headersRemoveFirst, "removeFirst(...)");
                headers = headersRemoveFirst;
            } else {
                IOException iOException = this.errorException;
                if (iOException != null) {
                    throw iOException;
                }
                ErrorCode errorCode$okhttp = getErrorCode$okhttp();
                Intrinsics.checkNotNull(errorCode$okhttp);
                throw new StreamResetException(errorCode$okhttp);
            }
        }
        return headers;
    }

    @Override // okio.Socket
    public FramingSource getSource() {
        return this.source;
    }

    @Override // okio.Socket
    public FramingSink getSink() {
        return this.sink;
    }

    public final StreamTimeout getReadTimeout$okhttp() {
        return this.readTimeout;
    }

    public final StreamTimeout getWriteTimeout$okhttp() {
        return this.writeTimeout;
    }

    public final void setErrorCode$okhttp(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public final IOException getErrorException$okhttp() {
        return this.errorException;
    }

    public final void setErrorException$okhttp(IOException iOException) {
        this.errorException = iOException;
    }

    public final boolean isLocallyInitiated() {
        return this.connection.getClient$okhttp() == ((this.f1553id & 1) == 1);
    }

    public static /* synthetic */ Headers takeHeaders$default(Http2Stream http2Stream, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return http2Stream.takeHeaders(z);
    }

    public final Timeout readTimeout() {
        return this.readTimeout;
    }

    public final Timeout writeTimeout() {
        return this.writeTimeout;
    }

    public final void close(ErrorCode rstStatusCode, IOException iOException) {
        Intrinsics.checkNotNullParameter(rstStatusCode, "rstStatusCode");
        if (closeInternal(rstStatusCode, iOException)) {
            this.connection.writeSynReset$okhttp(this.f1553id, rstStatusCode);
        }
    }

    @Override // okio.Socket
    public void cancel() {
        closeLater(ErrorCode.CANCEL);
    }

    public final void closeLater(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (closeInternal(errorCode, null)) {
            this.connection.writeSynResetLater$okhttp(this.f1553id, errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean doReadTimeout() {
        return !this.connection.getClient$okhttp() || getSink().getClosed() || getSink().getFinished();
    }

    public final class FramingSource implements Source {
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private Headers trailers;
        private final Buffer receiveBuffer = new Buffer();
        private final Buffer readBuffer = new Buffer();

        public FramingSource(long j, boolean z) {
            this.maxByteCount = j;
            this.finished = z;
        }

        public final boolean getFinished$okhttp() {
            return this.finished;
        }

        public final void setFinished$okhttp(boolean z) {
            this.finished = z;
        }

        public final Buffer getReceiveBuffer() {
            return this.receiveBuffer;
        }

        public final Buffer getReadBuffer() {
            return this.readBuffer;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        public final boolean getClosed$okhttp() {
            return this.closed;
        }

        public final void setClosed$okhttp(boolean z) {
            this.closed = z;
        }

        @Override // okio.Source
        public long read(Buffer sink, long j) throws IOException {
            IOException errorException$okhttp;
            boolean z;
            long j2;
            Intrinsics.checkNotNullParameter(sink, "sink");
            long j3 = 0;
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                synchronized (http2Stream) {
                    boolean zDoReadTimeout = http2Stream.doReadTimeout();
                    if (zDoReadTimeout) {
                        http2Stream.getReadTimeout$okhttp().enter();
                    }
                    try {
                        if (http2Stream.getErrorCode$okhttp() == null || this.finished) {
                            errorException$okhttp = null;
                        } else {
                            errorException$okhttp = http2Stream.getErrorException$okhttp();
                            if (errorException$okhttp == null) {
                                ErrorCode errorCode$okhttp = http2Stream.getErrorCode$okhttp();
                                Intrinsics.checkNotNull(errorCode$okhttp);
                                errorException$okhttp = new StreamResetException(errorCode$okhttp);
                            }
                        }
                        if (this.closed) {
                            throw new IOException("stream closed");
                        }
                        z = false;
                        if (this.readBuffer.size() > j3) {
                            Buffer buffer = this.readBuffer;
                            j2 = buffer.read(sink, Math.min(j, buffer.size()));
                            WindowCounter.update$default(http2Stream.getReadBytes(), j2, 0L, 2, null);
                            long unacknowledged = http2Stream.getReadBytes().getUnacknowledged();
                            if (errorException$okhttp == null && unacknowledged >= http2Stream.getConnection().getOkHttpSettings().getInitialWindowSize() / 2) {
                                http2Stream.getConnection().writeWindowUpdateLater$okhttp(http2Stream.getId(), unacknowledged);
                                WindowCounter.update$default(http2Stream.getReadBytes(), 0L, unacknowledged, 1, null);
                            }
                        } else {
                            if (!this.finished && errorException$okhttp == null) {
                                http2Stream.waitForIo$okhttp();
                                z = true;
                            }
                            j2 = -1;
                        }
                        if (zDoReadTimeout) {
                            http2Stream.getReadTimeout$okhttp().exitAndThrowIfTimedOut();
                        }
                        Unit unit = Unit.INSTANCE;
                    } finally {
                    }
                }
                Http2Stream.this.getConnection().getFlowControlListener$okhttp().receivingStreamWindowChanged(Http2Stream.this.getId(), Http2Stream.this.getReadBytes(), this.readBuffer.size());
                if (!z) {
                    if (j2 != -1) {
                        return j2;
                    }
                    if (errorException$okhttp == null) {
                        return -1L;
                    }
                    throw errorException$okhttp;
                }
                j3 = 0;
            }
        }

        private final void updateConnectionFlowControl(long j) {
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream.this.getConnection().updateConnectionFlowControl$okhttp(j);
        }

        public final void receive$okhttp(BufferedSource source, long j) throws EOFException {
            boolean z;
            boolean z2;
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            long j2 = j;
            while (j2 > 0) {
                synchronized (Http2Stream.this) {
                    z = this.finished;
                    z2 = this.readBuffer.size() + j2 > this.maxByteCount;
                    Unit unit = Unit.INSTANCE;
                }
                if (z2) {
                    source.skip(j2);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    source.skip(j2);
                    return;
                }
                long j3 = source.read(this.receiveBuffer, j2);
                if (j3 == -1) {
                    throw new EOFException();
                }
                j2 -= j3;
                Http2Stream http2Stream2 = Http2Stream.this;
                synchronized (http2Stream2) {
                    try {
                        if (this.closed) {
                            this.receiveBuffer.clear();
                        } else {
                            boolean z3 = this.readBuffer.size() == 0;
                            this.readBuffer.writeAll(this.receiveBuffer);
                            if (z3) {
                                Intrinsics.checkNotNull(http2Stream2, "null cannot be cast to non-null type java.lang.Object");
                                http2Stream2.notifyAll();
                            }
                        }
                    } finally {
                    }
                }
            }
            updateConnectionFlowControl(j);
            Http2Stream.this.getConnection().getFlowControlListener$okhttp().receivingStreamWindowChanged(Http2Stream.this.getId(), Http2Stream.this.getReadBytes(), this.readBuffer.size());
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Http2Stream.this.getReadTimeout$okhttp();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long size;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.closed = true;
                size = this.readBuffer.size();
                this.readBuffer.clear();
                Intrinsics.checkNotNull(http2Stream, "null cannot be cast to non-null type java.lang.Object");
                http2Stream.notifyAll();
                Unit unit = Unit.INSTANCE;
            }
            if (size > 0) {
                updateConnectionFlowControl(size);
            }
            Http2Stream.this.cancelStreamIfNecessary$okhttp();
        }
    }

    public final class FramingSink implements Sink {
        private boolean closed;
        private boolean finished;
        private final Buffer sendBuffer;
        private Headers trailers;

        public FramingSink(boolean z) {
            this.finished = z;
            this.sendBuffer = new Buffer();
        }

        public /* synthetic */ FramingSink(Http2Stream http2Stream, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        public final boolean getFinished() {
            return this.finished;
        }

        public final void setFinished(boolean z) {
            this.finished = z;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        public final boolean getClosed() {
            return this.closed;
        }

        public final void setClosed(boolean z) {
            this.closed = z;
        }

        @Override // okio.Sink
        public void write(Buffer source, long j) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            this.sendBuffer.write(source, j);
            while (this.sendBuffer.size() >= Http2Stream.EMIT_BUFFER_SIZE) {
                emitFrame(false);
            }
        }

        /* JADX WARN: Finally extract failed */
        private final void emitFrame(boolean z) throws IOException {
            long jMin;
            boolean z2;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                try {
                    http2Stream.getWriteTimeout$okhttp().enter();
                    while (http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum() && !this.finished && !this.closed && http2Stream.getErrorCode$okhttp() == null) {
                        try {
                            http2Stream.waitForIo$okhttp();
                        } catch (Throwable th) {
                            http2Stream.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                            throw th;
                        }
                    }
                    http2Stream.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                    http2Stream.checkOutNotClosed$okhttp();
                    jMin = Math.min(http2Stream.getWriteBytesMaximum() - http2Stream.getWriteBytesTotal(), this.sendBuffer.size());
                    http2Stream.setWriteBytesTotal$okhttp(http2Stream.getWriteBytesTotal() + jMin);
                    z2 = z && jMin == this.sendBuffer.size();
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Http2Stream.this.getWriteTimeout$okhttp().enter();
            try {
                Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), z2, this.sendBuffer, jMin);
            } finally {
                Http2Stream.this.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                http2Stream2.checkOutNotClosed$okhttp();
                Unit unit = Unit.INSTANCE;
            }
            while (this.sendBuffer.size() > 0) {
                emitFrame(false);
                Http2Stream.this.getConnection().flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Http2Stream.this.getWriteTimeout$okhttp();
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                if (this.closed) {
                    return;
                }
                boolean z = http2Stream2.getErrorCode$okhttp() == null;
                Unit unit = Unit.INSTANCE;
                if (!Http2Stream.this.getSink().finished) {
                    boolean z2 = this.sendBuffer.size() > 0;
                    if (this.trailers != null) {
                        while (this.sendBuffer.size() > 0) {
                            emitFrame(false);
                        }
                        Http2Connection connection = Http2Stream.this.getConnection();
                        int id = Http2Stream.this.getId();
                        Headers headers = this.trailers;
                        Intrinsics.checkNotNull(headers);
                        connection.writeHeaders$okhttp(id, z, _UtilJvmKt.toHeaderList(headers));
                    } else if (z2) {
                        while (this.sendBuffer.size() > 0) {
                            emitFrame(true);
                        }
                    } else if (z) {
                        Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.closed = true;
                    Intrinsics.checkNotNull(http2Stream3, "null cannot be cast to non-null type java.lang.Object");
                    http2Stream3.notifyAll();
                    Unit unit2 = Unit.INSTANCE;
                }
                Http2Stream.this.getConnection().flush();
                Http2Stream.this.cancelStreamIfNecessary$okhttp();
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void addBytesToWriteWindow(long j) {
        this.writeBytesMaximum += j;
        if (j > 0) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void checkOutNotClosed$okhttp() throws IOException {
        if (getSink().getClosed()) {
            throw new IOException("stream closed");
        }
        if (getSink().getFinished()) {
            throw new IOException("stream finished");
        }
        if (getErrorCode$okhttp() != null) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode$okhttp = getErrorCode$okhttp();
            Intrinsics.checkNotNull(errorCode$okhttp);
            throw new StreamResetException(errorCode$okhttp);
        }
    }

    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.getConnection().sendDegradedPingLater$okhttp();
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public final void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }
    }
}
