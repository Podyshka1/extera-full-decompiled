package okhttp3.internal.http1;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final ExchangeCodec.Carrier carrier;
    private final OkHttpClient client;
    private final HeadersReader headersReader;
    private final BufferedSocket socket;
    private int state;
    private Headers trailers;
    public static final Companion Companion = new Companion(null);
    private static final Headers TRAILERS_RESPONSE_BODY_TRUNCATED = Headers.Companion.m1096of("OkHttp-Response-Body", "Truncated");

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, BufferedSocket socket) {
        Intrinsics.checkNotNullParameter(carrier, "carrier");
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.client = okHttpClient;
        this.carrier = carrier;
        this.socket = socket;
        this.headersReader = new HeadersReader(getSocket().getSource());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public BufferedSocket getSocket() {
        return this.socket;
    }

    private final boolean isChunked(Response response) {
        return StringsKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true);
    }

    private final boolean isChunked(Request request) {
        return StringsKt.equals("chunked", request.header("Transfer-Encoding"), true);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public boolean isResponseComplete() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Sink createRequestBody(Request request, long j) throws ProtocolException {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null && requestBodyBody.isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (isChunked(request)) {
            return newChunkedSink();
        }
        if (j != -1) {
            return newKnownLengthSink();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getCarrier().mo3882cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getCarrier().getRoute().proxy().type();
        Intrinsics.checkNotNullExpressionValue(type, "type(...)");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (isChunked(response)) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Source openResponseBodySource(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(response.request().url(), 0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        if (jHeadersContentLength != -1) {
            return newFixedLengthSource(response.request().url(), jHeadersContentLength);
        }
        return newUnknownLengthSource(response.request().url());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Headers peekTrailers() throws IOException {
        Headers headers = this.trailers;
        if (headers == TRAILERS_RESPONSE_BODY_TRUNCATED) {
            throw new IOException("Trailers cannot be read because the response body was truncated");
        }
        int i = this.state;
        if (i == 5 || i == 6) {
            return headers;
        }
        throw new IllegalStateException(("Trailers cannot be read because the state is " + this.state).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        getSocket().getSink().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        getSocket().getSink().flush();
    }

    public final void writeRequest(Headers headers, String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        if (this.state != 0) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        getSocket().getSink().writeUtf8(requestLine).writeUtf8("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            getSocket().getSink().writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
        }
        getSocket().getSink().writeUtf8("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.Builder readResponseHeaders(boolean z) throws IOException {
        int i = this.state;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        try {
            StatusLine statusLine = StatusLine.Companion.parse(this.headersReader.readLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(this.headersReader.readHeaders());
            if (z && statusLine.code == 100) {
                return null;
            }
            int i2 = statusLine.code;
            if (i2 == 100) {
                this.state = 3;
                return builderHeaders;
            }
            if (102 <= i2 && i2 < 200) {
                this.state = 3;
                return builderHeaders;
            }
            this.state = 4;
            return builderHeaders;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on " + getCarrier().getRoute().address().url().redact(), e);
        }
    }

    private final Sink newChunkedSink() {
        if (this.state != 1) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.state = 2;
        return new ChunkedSink();
    }

    private final Sink newKnownLengthSink() {
        if (this.state != 1) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.state = 2;
        return new KnownLengthSink();
    }

    private final Source newFixedLengthSource(HttpUrl httpUrl, long j) {
        if (this.state != 4) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.state = 5;
        return new FixedLengthSource(this, httpUrl, j);
    }

    private final Source newChunkedSource(HttpUrl httpUrl) {
        if (this.state != 4) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.state = 5;
        return new ChunkedSource(this, httpUrl);
    }

    private final Source newUnknownLengthSource(HttpUrl httpUrl) {
        if (this.state != 4) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.state = 5;
        getCarrier().noNewExchanges();
        return new UnknownLengthSource(this, httpUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(ForwardingTimeout forwardingTimeout) {
        Timeout timeoutDelegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        timeoutDelegate.clearDeadline();
        timeoutDelegate.clearTimeout();
    }

    public final void skipConnectBody(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        if (jHeadersContentLength == -1) {
            return;
        }
        Source sourceNewFixedLengthSource = newFixedLengthSource(response.request().url(), jHeadersContentLength);
        _UtilJvmKt.skipAll(sourceNewFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        sourceNewFixedLengthSource.close();
    }

    private final class KnownLengthSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout;

        public KnownLengthSink() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.getSocket().getSink().timeout());
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer source, long j) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            _UtilCommonKt.checkOffsetAndCount(source.size(), 0L, j);
            Http1ExchangeCodec.this.getSocket().getSink().write(source, j);
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.getSocket().getSink().flush();
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }
    }

    private final class ChunkedSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout;

        public ChunkedSink() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.getSocket().getSink().timeout());
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer source, long j) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            BufferedSink sink = Http1ExchangeCodec.this.getSocket().getSink();
            sink.writeHexadecimalUnsignedLong(j);
            sink.writeUtf8("\r\n");
            sink.write(source, j);
            sink.writeUtf8("\r\n");
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.getSocket().getSink().flush();
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.getSocket().getSink().writeUtf8("0\r\n\r\n");
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }
    }

    private abstract class AbstractSource implements Source {
        private boolean closed;
        final /* synthetic */ Http1ExchangeCodec this$0;
        private final ForwardingTimeout timeout;
        private final HttpUrl url;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close();

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.this$0 = http1ExchangeCodec;
            this.url = url;
            this.timeout = new ForwardingTimeout(http1ExchangeCodec.getSocket().getSource().timeout());
        }

        public final HttpUrl getUrl() {
            return this.url;
        }

        protected final ForwardingTimeout getTimeout() {
            return this.timeout;
        }

        protected final boolean getClosed() {
            return this.closed;
        }

        protected final void setClosed(boolean z) {
            this.closed = z;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Source
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                return this.this$0.getSocket().getSource().read(sink, j);
            } catch (IOException e) {
                this.this$0.getCarrier().noNewExchanges();
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw e;
            }
        }

        public final void responseBodyComplete(Headers trailers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            Intrinsics.checkNotNullParameter(trailers, "trailers");
            if (this.this$0.state == 6) {
                return;
            }
            if (this.this$0.state == 5) {
                this.this$0.detachTimeout(this.timeout);
                this.this$0.trailers = trailers;
                this.this$0.state = 6;
                if (trailers.size() <= 0 || (okHttpClient = this.this$0.client) == null || (cookieJar = okHttpClient.cookieJar()) == null) {
                    return;
                }
                HttpHeaders.receiveHeaders(cookieJar, this.url, trailers);
                return;
            }
            throw new IllegalStateException("state: " + this.this$0.state);
        }
    }

    private final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;
        final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url, long j) {
            super(http1ExchangeCodec, url);
            Intrinsics.checkNotNullParameter(url, "url");
            this.this$0 = http1ExchangeCodec;
            this.bytesRemaining = j;
            if (j == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (getClosed()) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.bytesRemaining;
            if (j2 == 0) {
                return -1L;
            }
            long j3 = super.read(sink, Math.min(j2, j));
            if (j3 == -1) {
                this.this$0.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw protocolException;
            }
            long j4 = this.bytesRemaining - j3;
            this.bytesRemaining = j4;
            if (j4 == 0) {
                responseBodyComplete(Headers.EMPTY);
            }
            return j3;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getCarrier().noNewExchanges();
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }

    private final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super(http1ExchangeCodec, url);
            Intrinsics.checkNotNullParameter(url, "url");
            this.this$0 = http1ExchangeCodec;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (getClosed()) {
                throw new IllegalStateException("closed");
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j2 = this.bytesRemainingInChunk;
            if (j2 == 0 || j2 == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j3 = super.read(sink, Math.min(j, this.bytesRemainingInChunk));
            if (j3 == -1) {
                this.this$0.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
                throw protocolException;
            }
            this.bytesRemainingInChunk -= j3;
            return j3;
        }

        private final void readChunkSize() throws ProtocolException {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.getSocket().getSource().readUtf8LineStrict();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.getSocket().getSource().readHexadecimalUnsignedLong();
                String string = StringsKt.trim(this.this$0.getSocket().getSource().readUtf8LineStrict()).toString();
                if (this.bytesRemainingInChunk >= 0 && (string.length() <= 0 || StringsKt.startsWith$default(string, ";", false, 2, (Object) null))) {
                    if (this.bytesRemainingInChunk == 0) {
                        this.hasMoreChunks = false;
                        responseBodyComplete(this.this$0.headersReader.readHeaders());
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + '\"');
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getCarrier().noNewExchanges();
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }

    private final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;
        final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super(http1ExchangeCodec, url);
            Intrinsics.checkNotNullParameter(url, "url");
            this.this$0 = http1ExchangeCodec;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (getClosed()) {
                throw new IllegalStateException("closed");
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j2 = super.read(sink, j);
            if (j2 != -1) {
                return j2;
            }
            this.inputExhausted = true;
            responseBodyComplete(Headers.EMPTY);
            return -1L;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete(Http1ExchangeCodec.TRAILERS_RESPONSE_BODY_TRUNCATED);
            }
            setClosed(true);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
