package okhttp3;

import java.io.Closeable;
import java.io.EOFException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http1.HeadersReader;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Options afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final ByteString crlfDashDashBoundary;
    private PartSource currentPart;
    private final ByteString dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final BufferedSource source;

    public MultipartReader(BufferedSource source, String boundary) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new Buffer().writeUtf8("--").writeUtf8(boundary).readByteString();
        this.crlfDashDashBoundary = new Buffer().writeUtf8("\r\n--").writeUtf8(boundary).readByteString();
    }

    public final String boundary() {
        return this.boundary;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody response) throws ProtocolException {
        String strParameter;
        Intrinsics.checkNotNullParameter(response, "response");
        BufferedSource bufferedSourceSource = response.source();
        MediaType mediaTypeContentType = response.contentType();
        if (mediaTypeContentType != null && (strParameter = mediaTypeContentType.parameter("boundary")) != null) {
            this(bufferedSourceSource, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }

    public final Part nextPart() throws ProtocolException, EOFException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.rangeEquals(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.size());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(8192L);
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                this.source.skip(jCurrentPartBytesRemaining);
            }
            this.source.skip(this.crlfDashDashBoundary.size());
        }
        boolean z = false;
        while (true) {
            int iSelect = this.source.select(afterBoundaryOptions);
            if (iSelect == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iSelect == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(headers, Okio.buffer(partSource));
            }
            if (iSelect == 1) {
                if (z) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iSelect == 2 || iSelect == 3) {
                z = true;
            }
        }
    }

    private final class PartSource implements Source {
        private final Timeout timeout = new Timeout();

        public PartSource() {
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // okio.Source
        public long read(Buffer sink, long j) {
            long j2;
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j >= 0) {
                if (Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                    Timeout timeout = MultipartReader.this.source.timeout();
                    Timeout timeout2 = this.timeout;
                    MultipartReader multipartReader = MultipartReader.this;
                    long jTimeoutNanos = timeout.timeoutNanos();
                    long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    timeout.timeout(jMinTimeout, timeUnit);
                    if (timeout.hasDeadline()) {
                        long jDeadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            j2 = 0;
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        } else {
                            j2 = 0;
                        }
                        try {
                            long jCurrentPartBytesRemaining = multipartReader.currentPartBytesRemaining(j);
                            long j3 = jCurrentPartBytesRemaining == j2 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining);
                            timeout.timeout(jTimeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                            return j3;
                        } catch (Throwable th) {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                            throw th;
                        }
                    }
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        long jCurrentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(j);
                        long j4 = jCurrentPartBytesRemaining2 == 0 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining2);
                        timeout.timeout(jTimeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        return j4;
                    } catch (Throwable th2) {
                        timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th2;
                    }
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j) throws EOFException {
        long jMin = Math.min(this.source.getBuffer().size(), j) + 1;
        long jIndexOf = this.source.indexOf(this.crlfDashDashBoundary, 0L, jMin);
        if (jIndexOf != -1) {
            return jIndexOf;
        }
        if (this.source.getBuffer().size() >= jMin) {
            return Math.min(jMin, j);
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public static final class Part implements Closeable {
        private final BufferedSource body;
        private final Headers headers;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.body.close();
        }

        public Part(Headers headers, BufferedSource body) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(body, "body");
            this.headers = headers;
            this.body = body;
        }

        public final Headers headers() {
            return this.headers;
        }

        public final BufferedSource body() {
            return this.body;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Options getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    static {
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        afterBoundaryOptions = companion.m1116of(companion2.encodeUtf8("\r\n"), companion2.encodeUtf8("--"), companion2.encodeUtf8(" "), companion2.encodeUtf8("\t"));
    }
}
